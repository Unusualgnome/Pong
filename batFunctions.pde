boolean bat1Up = false, bat2Up = false, bat1Down = false, bat2Down = false;

void keyPressed() {
  if (key == 'w') {
    bat1Up = true;
  }

  if (keyCode == UP) {
    bat2Up = true;
  }

  if (key == 's') {
    bat1Down = true;
  }

  if (keyCode == DOWN) {
    bat2Down = true;
  }
}

void keyReleased() {
  if (key == 'w') {
    bat1Up = false;
  }

  if (keyCode == UP) {
    bat2Up = false;
  }

  if (key == 's') {
    bat1Down = false;
  }

  if (keyCode == DOWN) {
    bat2Down = false;
  }
}

void batMovement() {
  if (bat1Up) {
    bat1Y -= batSnelheid;
  }
  if (bat1Down) {
    bat1Y += batSnelheid;
  }
  if (bat2Up) {
    bat2Y -= batSnelheid;
  }
  if (bat2Down) {
    bat2Y += batSnelheid;
  }
}


void bat() {
  batMovement();

  //bat1
  rect(bat1X, bat1Y, batBreedte, batHoogte);

  //bat2
  rect(bat2X, bat2Y, batBreedte, batHoogte);
}
