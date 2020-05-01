void balBotsen() {
  //bal
  if (balY <= dia / 2 || balY >= height - dia /2) {
    balYSnelheid *= -1;
  }

  if (get(balX + dia / 2, balY - dia / 2) == color(255) || get(balX + dia / 2, balY + dia / 2) == color(255)) {
    balXSnelheid *= -1;
  }
  if (get(balX - dia / 2, balY - dia / 2) == color(255) || get(balX - dia / 2, balY + dia / 2) == color(255)) {
    balXSnelheid *= -1;
  }
}

void scoren() {
  if (balX + dia / 2 >= bat2X) {
    punten1 += 1;
    reset(false);
  }
  if (balX - dia / 2 <= bat1X) {
    punten2 += 1;
    reset(false);
  }
}


void bal() {
  if (!timer) {
    balX += balXSnelheid;
    balY += balYSnelheid;
  }
  rect(balX, balY, dia, dia);
}
