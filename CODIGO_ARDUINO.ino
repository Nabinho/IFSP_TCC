/*                            
                            TCC _ GG & GG
                 Estufa Automatizada com Interface Web
                           IFSP _ Guarulhos
             Alexandre xxxxxxxxx & Ricardo Pereira da Silva

             Componentes:
              - MEGA
              - Ethernet W5500
              - pH 4205
              - HD-38
              - MQ135
              - TEMT6000
              - HTU21
              - DS3231
              - SerialRelay
              - Solenoide
              - Cooler
              - Peristaltica
              - Full Spectrum

*/
//----------------------------------------------------------------------------
//----------------------------------------------------------------------------

//Bibliotecas
#include <Ethernet.h> 
#include <SD.h>
#include <SPI.h>
#include <Wire.h>
#include <SparkFunHTU21D.h>
#include <SerialRelay.h>
#include <DS3231.h>
#include <rExcel.h>

//----------------------------------------------------------------------------

//Objetos
SerialRelay RELE(39,40,1);
HTU21D SENSOR;
DS3231  rtc(SDA, SCL);
Time  t;
rExcel myExcel; 

//----------------------------------------------------------------------------

//Ethernet
byte mac[] = { 0x70, 0xB3, 0xD5, 0x0A, 0xC4, 0xC2 };
IPAddress ip(192, 168, 0, 4);
EthernetServer server(80);

//----------------------------------------------------------------------------

//Variaveis de Leituras
float umd;
float temp;
float ppm;
float umds;
float luz;
float tanque;
float pH;
float voltage;
unsigned long tempo_antes = 0;
int intervalo = 1000;
int hora = 0;
long idx = 0;
char value[16];

//----------------------------------------------------------------------------

//SD Card
File webFile;

//----------------------------------------------------------------------------

//Java
#define REQ_BUF_SZ    40
char HTTP_req[REQ_BUF_SZ] = { 0 };
char req_index = 0;

//----------------------------------------------------------------------------

//Pinos dos Sensores
#define HD A14
#define TEMT A13
#define PH A15
#define nivel 27
#define MQ A12

//----------------------------------------------------------------------------

//Variaveis Auxiliares para Sensor de pH
#define Offset 0.00 
#define ArrayLenth  40 
int pHArray[ArrayLenth];
int pHArrayIndex=0;

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------

//Funcao de Configuracao
void setup() {

  Serial.begin(115200);
  
  Ethernet.begin(mac, ip);
  server.begin();
  Serial.print("SERVIDOR: ");
  Serial.println(Ethernet.localIP());

  SENSOR.begin();
  myExcel.clearInput();
  rtc.begin();
  rtc.setTime(16, 40, 0);
  pinMode(nivel, INPUT_PULLUP);
  Serial.println("SENSORES OK");

  for (int i = 1; i <= 4; i++){
    RELE.SetRelay(i, SERIAL_RELAY_OFF, 1);
  }
  Serial.println("RELES OK");

  if (!SD.begin(4)) {
    Serial.println("ERRO");
    return;
  }else{
  Serial.println("SD OK");
  }
  if (!SD.exists("tcc.htm")) {
    Serial.println("ERRO");
    return;
  }else{
  Serial.println("HTML OK");
  }
  
}

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------

//Funcao Principal
void loop() {

  EthernetClient client = server.available();

  if (client) {
    Serial.println("SERVIDOR OK");
    boolean currentLineIsBlank = true;
    while (client.connected()) {
      if (client.available()) {
        char c = client.read();
        
        if (req_index < (REQ_BUF_SZ - 1)) {
          HTTP_req[req_index] = c;
          req_index++;
        }

        if (c == '\n' && currentLineIsBlank) {
          client.println("HTTP/1.1 200 OK");
          client.println("Content-Type: text/html");
          client.println("Connection: close");
          client.println("Refresh: 120");
          client.println();
          
          if (StrContains(HTTP_req, "ajax_LerDados")) {
            LerDados(client);
            Serial.println("DADOS OK");
          }
          
          webFile = SD.open("tcc.htm");
          if (webFile) {
            while (webFile.available()) {
              client.write(webFile.read());
            }
            webFile.close();
          }
        
          Serial.println(HTTP_req);
          req_index = 0;
          StrClear(HTTP_req, REQ_BUF_SZ);
          break;
        }
        if (c == '\n') {
          currentLineIsBlank = true;
        }
        else if (c != '\r') {
          currentLineIsBlank = false;
        }
      }
    }
    
    client.stop();
    Serial.println("SERVIDOR FECHADO");

  }
  
  LerHora();
  ControleHorario();

  if(Serial.available() > 0){
    DataBase();
  }

}

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------

//Funcao de Envio de Dados para AJAX
void LerDados(EthernetClient novoCliente) {

  Variaveis();

  novoCliente.print(umd);
  novoCliente.println("%");

  novoCliente.print("|");

  novoCliente.print(temp);
  novoCliente.println("C");

  novoCliente.print("|");

  novoCliente.print(ppm);
  novoCliente.println("ppm");
  
  novoCliente.print("|");

  novoCliente.print(luz);
  novoCliente.println("%");

  novoCliente.print("|");

  novoCliente.print(umds);
  novoCliente.println("%");

  novoCliente.print("|");

  novoCliente.println(pH);

  novoCliente.print("|");

  novoCliente.println(tanque);

  novoCliente.print("|");
  novoCliente.println();
  
}

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------

//Funcao de Envio de Dados para PHP
void DataBase (){
  
  Variaveis();

  myExcel.writeIndexed("TCC", idx+11, 1,"%date%");
  myExcel.writeIndexed("TCC", idx+11, 2,"%time%");
  myExcel.writeIndexed("TCC", idx+11, 3, idx);
  myExcel.writeIndexed("TCC", idx+11, 4, temp, 2);
  myExcel.writeIndexed("TCC", idx+11, 5, umd, 3);
  myExcel.writeIndexed("TCC", idx+11, 6, umds, 2);
  myExcel.writeIndexed("TCC", idx+11, 7, luz, 2);
  myExcel.writeIndexed("TCC", idx+11, 8, pH, 2);
  myExcel.writeIndexed("TCC", idx+11, 9, ppm, 2);
  myExcel.writeIndexed("TCC", idx+11, 10, tanque, 2);

  idx++;

  Serial.println("DATABASE OK");
  
}

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------

//Funcao de Leitura dos Sensores e Atribuicao de Variaveis
void Variaveis (){

  umd = SENSOR.readHumidity();
  Serial.print("Umidade:");
  Serial.println(umd);

  temp = SENSOR.readTemperature();
  Serial.print("Temperatura:");
  Serial.println(temp);

  ppm = analogRead(MQ);
  Serial.print("PPM:");
  Serial.println(ppm);

  luz = map(analogRead(TEMT), 0, 1023, 0, 100);
  Serial.print("Luz:");
  Serial.println(luz);

  umds = map(analogRead(HD), 875, 400, 0, 100);
  Serial.print("Umidade do solo:");
  Serial.println(umds);

  tanque = digitalRead(nivel);
  Serial.print("Nivel:");
  Serial.println(tanque);

  pHArray[pHArrayIndex++]=analogRead(PH);
  if(pHArrayIndex==ArrayLenth)pHArrayIndex=0;
  voltage = avergearray(pHArray, ArrayLenth)*5.0/1024;
  pH = 3.5*voltage+Offset;
  Serial.print("Ph:");
  Serial.println(pH);
  
}

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------

//Funcao de Controle de Horario
void LerHora(){

  unsigned long tempo_atual = millis();

    if(tempo_atual - tempo_antes >= intervalo){
      tempo_antes = tempo_atual;
      t = rtc.getTime();
      hora = t.hour;
      Serial.print("Horario: ");
      Serial.println(hora);
    }

}

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------

//Funcao de Controle de Horario
void ControleHorario(){
  
  LerHora();

  if( hora >= 6 && hora <= 19){
    ControlGAS();
    ControlLUZ();
    //ControlAR();
    //ControlSOLO();
    Serial.println("CONTROLE OK");
  } else if ( hora < 6 || hora > 19 ) {
    RELE.SetRelay(1, SERIAL_RELAY_OFF, 1);
    RELE.SetRelay(2, SERIAL_RELAY_OFF, 1);
    RELE.SetRelay(3, SERIAL_RELAY_OFF, 1);
    RELE.SetRelay(4, SERIAL_RELAY_OFF, 1);
    Serial.println("CONTROLE PARADO");
  }
  
}

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------

//Funcao de Controle de CO2
void ControlGAS (){

  Variaveis();

  if(ppm < 30){
    RELE.SetRelay(2, SERIAL_RELAY_ON, 1);
  } else if (ppm > 60) {
    RELE.SetRelay(2, SERIAL_RELAY_OFF, 1);
  }

}

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------

//Funcao de Controle de Iluminacao
void ControlLUZ (){
  
  Variaveis();

  if(luz <= 20){
    RELE.SetRelay(4, SERIAL_RELAY_ON, 1);
  } 
  if(luz > 21){
    RELE.SetRelay(4, SERIAL_RELAY_OFF, 1);
  }

}

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------

//Funcao de Controle de Umidade e Temperatura do Ar
void ControlAR (){

  Variaveis();

  if(temp >= 35 || umd >= 80){
    RELE.SetRelay(1, SERIAL_RELAY_ON, 1);
  } else if(temp <= 20 || umd <= 30){
    RELE.SetRelay(1, SERIAL_RELAY_ON, 1);
  } else {
    RELE.SetRelay(1, SERIAL_RELAY_OFF, 1);
  }

}

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------

//Funcao de Controle da Umidade do Solo
void ControlSOLO (){

  Variaveis();

  if(umds <= 20){
    RELE.SetRelay(3, SERIAL_RELAY_ON, 1);
  } 

  if(umds >= 80){
    RELE.SetRelay(3, SERIAL_RELAY_OFF, 1);
  } 

}

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------

//Funcao Auxiliar do JavaScript
void StrClear(char *str, char length) {
  for (int i = 0; i < length; i++) {
    str[i] = 0;
  }
}

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------

//Funcao Auxiliar do AJAX
char StrContains(char *str, char *sfind)
{
  char found = 0;
  char index = 0;
  char len;

  len = strlen(str);

  if (strlen(sfind) > len) {
    return 0;
  }

  while (index < len) {
    if (str[index] == sfind[found]) {
      found++;
      if (strlen(sfind) == found) {
        return 1;
      }
    }
    else {
      found = 0;
    }
    index++;
  }
  return 0;
}

//----------------------------------------------------------------------------
//----------------------------------------------------------------------------

//Funcao Auxiliar para Leitura do Sensor de pH
double avergearray(int* arr, int number){
  int i;
  int max,min;
  double avg;
  long amount=0;
  if(number<=0){
    return 0;
  }
  if(number<5){
    for(i=0;i<number;i++){
      amount+=arr[i];
    }
    avg = amount/number;
    return avg;
  }else{
    if(arr[0]<arr[1]){
      min = arr[0];max=arr[1];
    }
    else{
      min=arr[1];max=arr[0];
    }
    for(i=2;i<number;i++){
      if(arr[i]<min){
        amount+=min;       
        min=arr[i];
      }else {
        if(arr[i]>max){
          amount+=max;    
          max=arr[i];
        }else{
          amount+=arr[i]; 
        }
      }
    }
    avg = (double)amount/(number-2);
  }
  return avg;
}

//----------------------------------------------------------------------------
