Nave[] n = new Nave[nNavesVisiveis];

class Nave {
  float x = random(50, 200);
  float y = 50; 
  float size;
  int teste1, teste2, teste3, teste4, teste5;
  int mX = 3;
  float mY = 1;
  int posLA, posLF;
  float xF;
  boolean mudarLinha = false;
  boolean moveY = false;
  boolean atirar = false;
  float balaX, balaY, balaDistX, balaDistY, tempoTiro;
  boolean mover = true;


  void drawNave() {
    size = y/12;

    if (mover == true) {
      fill(245, 240, 255);
      ellipse(x, y, size, size);
      if (moveY == false)
        movNave1();
      else {
        movNave2();
        atirar();
        serAtirado();
      }
    }
  }


  void movNave1() {

    y = 50;

    if (x>0 && x<384)
      x=x+mX;
    else {
      mX = -mX;
      x=x+mX;
    }

    teste1 = int(random(80));
    if (teste1 == 1) mX = -mX;

    if ((x>50&&x<54)||(x>110&&x<114)||(x>150&&x<154)||(x>190&&x<194)||(x>230&&x<234)||(x>270&&x<274)||(x>330&&x<334)) {
      teste4 = int(random(5));
      if (teste4 == 1) {
        if (x <= 52) posLA=1;
        else if (x <= 112) posLA=2;
        else if (x <= 152) posLA=3;
        else if (x <= 192) posLA=4;
        else if (x <= 232) posLA=5;
        else if (x <= 272) posLA=6;
        else if (x <= 332) posLA=7;
        moveY = true;
      }
    }
  }

  void movNave2() {

    y = y + mY;    

    teste2 = int(random(1, 200));
    if ((teste2 == 1 && y > 50) || (y>240)) mY = -mY;

    if (y<=50) {
      mY = - mY;
      moveY = false;
    }

    if (mudarLinha==false) {
      if (posLA == 1) x = 52-((12*(y-50))/27);
      else if (posLA == 2) x = 112-((8*(y-50))/27);
      else if (posLA == 3) x = 152-((4*(y-50))/27);
      else if (posLA == 4) x = 192;
      else if (posLA == 5) x = 232+((4*(y-50))/27);
      else if (posLA == 6) x = 272+((8*(y-50))/27);
      else if (posLA == 7) x = 332+((12*(y-50))/27);

      if (x<=0||x>=384)
        mY = -1;

      teste3 = int(random(300));
      if (teste3 == 1) {
        posLF = int(random(8));
        mudarLinha = true;
      }
    }

    if (mudarLinha == true) {

      if (posLF == 1) xF = 52-((12*(y-50))/27);
      else if (posLF == 2) xF = 112-((8*(y-50))/27);
      else if (posLF == 3) xF = 152-((4*(y-50))/27);
      else if (posLF == 4) xF = 192;
      else if (posLF == 5) xF = 232+((4*(y-50))/27);
      else if (posLF == 6) xF = 272+((8*(y-50))/27);
      else if (posLF == 7) xF = 332+((12*(y-50))/27);

      if (posLF>posLA && xF> x) {
        x=x+2;
      } else if (posLF<posLA && xF<x) {
        x=x-2;
      } else {
        posLA = posLF;
        mudarLinha = false;
      }
    }
  }

  void atirar() {
    if (atirar==false) {
      teste5 = int(random(200));
      if (teste5 == 1) {
        balaY = y;
        balaX = x;
        balaDistY = (320-y)/40;
        balaDistX = (posPlayer-balaX)/40;
        tempoTiro = 0;
        atirar = true;
      }
    } 

    if (atirar==true) {
      fill(100, 255, 135);
      circle(balaX, balaY, 6);
      tempoTiro = tempoTiro + 1;
      if (tempoTiro<=60) {
        balaY = balaY+balaDistY;
        balaX = balaX+balaDistX;
      } else atirar = false;
    }

    if (dist(balaX, balaY, posPlayer, 305) < 10)
      gameOver = true;
  }

  void serAtirado() {
    if (dist(balaPX, balaPY, x, y)<10) {
      nNavesTotais = nNavesTotais-1;
      pontos = pontos+44;
      if (nNavesTotais>=nNavesVisiveis) {
        moveY = false;
      } else {
        mover = false;
      }
    }
  }
}
