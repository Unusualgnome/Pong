int bat1X, bat1Y;
int bat2X, bat2Y;
int batBreedte, batHoogte, batSnelheid;

int balX, balY, balXSnelheid, balYSnelheid, dia;

int punten1, punten2;

boolean timer, setTime;

float time1;

void setup() {
  fullScreen();
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  textSize(40);
  
  setTime = true;
  reset(true);

  fill(255);
}

void draw() {
  background(0);
  if (timer) {
    timer();
  }
  if(!timer){
    setTime = true;
  }

  bat();

  balBotsen();

  scoren();

  bal();

  text(punten1, width / 2 - 50, 50);
  text(punten2, width / 2 + 50, 50);
}


void reset(boolean hard) {
  balX = width / 2;
  balY = height / 2;
  balXSnelheid *= -1;
  timer = true;

  if (hard) {
    punten1 = 0;
    punten2 = 0;
    balXSnelheid = 10;
    balYSnelheid = 7;
    dia = 40;

    batBreedte = 40;
    batHoogte = 200;
    batSnelheid = 7;

    bat1X = 10 + batBreedte / 2;
    bat1Y = height / 2;

    bat2X = width - 10 - batBreedte / 2;
    bat2Y = height / 2;
  }
}



void timer() {
  if (setTime) {
    time1 = millis();
    setTime = false;
  }

  if (millis() - time1 >= 3000) {
    timer = false;
  }
  text(3 - round((millis() - 1) / 1000), width / 2, height / 2 - 100);
}
