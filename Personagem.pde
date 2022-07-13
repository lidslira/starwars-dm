float posPlayer = 192;
float balaPY = 290;
float balaPX = 192;
float mBalaPX = 0;

void player() {
  fill(200, 200, 20);
  noStroke();
  triangle(posPlayer, 300, posPlayer-20, 310, posPlayer+20, 310);
}


void balaPlayer() {
  fill(240, 30, 20);
  circle(balaPX, balaPY, 8);

  if (balaMove == false) {
    balaPY = 290;
    balaPX = posPlayer;
  } else if (balaPY>50) {
    balaPY = balaPY - 8;
    balaPX = balaPX + mBalaPX;
  } else {
    balaMove = false;
    if (nNavesTotais==0) nBombas = nBombas - 1;
  }
}
