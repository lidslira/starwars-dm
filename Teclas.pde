boolean balaMove = false;

void keyPressed() {
  if (gameOver == false) {
    if (keyCode == LEFT && posPlayer>32)
      posPlayer = posPlayer-80;

    if (keyCode == RIGHT && posPlayer<352)
      posPlayer = posPlayer+80;

    if (key == ' ' && nBombas>0) {
      balaMove = true;
      if (posPlayer == 352) mBalaPX = -2.7;
      else if (posPlayer == 272) mBalaPX = -1.4;
      else if (posPlayer == 192) mBalaPX = 0;
      else if (posPlayer == 112) mBalaPX = 1.4;
      else if (posPlayer == 32) mBalaPX = 2.7;
    }
  }
}
