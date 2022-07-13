void telaGO() {
  fill(200, 20, 20);
  noStroke();
  triangle(posPlayer-5, 300, posPlayer-20, 310, posPlayer-5, 310);
  triangle(posPlayer+5, 300, posPlayer+5, 310, posPlayer+20, 310);
  fill(220, 220, 220);
  textSize(30);
  text("Game Over", 110, 38);
}

void telaGanhar() {
  fill(220, 220, 220);
  textSize(30);
  text("VOCÊ GANHOU!", 75, 38);
}

void telaErro() {
  fill(0,220);
  rect(0,0,width,height);
  fill(220, 100, 100);
  textSize(50);
  text("ERRO", 130, 100);
  fill(220, 180, 180);
  textSize(15);
  textAlign(CENTER);
  text("O número de naves totais deve ser maior ou igual ao número de naves visivéis", 70, 128,250,300);
  textAlign(LEFT);
}
