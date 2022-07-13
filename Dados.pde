void dados() {
  textSize(20);
  fill(180, 250, 30);
  text(nNavesTotais, 10, 30);
  fill(200, 200, 140);
  text(pontos, 340, 30);
  fill(170, 170, 240);
  if (nBombas>0) circle(45, 12, 6);
  if (nBombas>1) circle(45, 22, 6);
  if (nBombas>2) circle(45, 32, 6);
}
