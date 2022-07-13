float xNaveF = 0;
float mNaveF = 1;
float xBalaNF=0;
float yBalaNF=0;
boolean atirarNF=false;
float testeNF;

void naveF() {
  fill(230, 120, 30);
  circle(xNaveF, 50, 30);
  fill(200, 220, 50);
  circle(xNaveF, 50, 5);

  xNaveF = xNaveF + mNaveF;

  if (xNaveF>width || xNaveF<0)
    mNaveF = -mNaveF;

  if (dist(balaPX, balaPY, xNaveF, 50) < 38)
    ganhou = true;
}

void balaNaveF() {
  if (atirarNF == false) {
    testeNF = int(random(80));
    if (testeNF == 1) {
      xBalaNF = xNaveF;
      yBalaNF = 50;
      atirarNF = true;
    }
  } else {
    fill(250, 250, 250);
    circle(xBalaNF, yBalaNF, 15);
    yBalaNF = yBalaNF + 8;
    if (yBalaNF>height+8) atirarNF = false;
  }

  if (dist(xBalaNF, yBalaNF, posPlayer, 305)<22 && yBalaNF<318)
    gameOver = true;
}
