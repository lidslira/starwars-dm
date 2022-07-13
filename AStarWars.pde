boolean gameOver = false;
int nNavesVisiveis = 3;
int nNavesTotais = 15;
boolean ganhou = false;
int nBombas = 4;
int pontos = 0;

boolean erro = false;

void setup() {
  size(384, 320);
  for (int i=0; i<nNavesVisiveis; i++)
    n[i] = new Nave();
  if(nNavesTotais < nNavesVisiveis) {
    gameOver = true;
    erro = true;
  }
}

void draw() {
  cenario();

  if (gameOver == false) {  
    player();
    balaPlayer();
    dados();
    if (nNavesTotais>0) {
      for (int i=0; i<nNavesVisiveis; i++)
        n[i].drawNave();
    } else { 
      if (ganhou == false) {
        naveF();
        balaNaveF();
      } else telaGanhar();
    }
  } else { 
    if(erro == false) telaGO();
    else telaErro();
  }
}
