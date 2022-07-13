float movLinha = 0;

void cenario () {
  background(0);
  stroke(20, 20, 245);
  strokeWeight(4);
  
  ///linha do horizonte
  line(0, 50, 384, 50);
  
  ///linhas diagonais
  line(52, 50, -68, 320);
  line(112, 50, 32, 320);
  line(152, 50, 112, 320);
  line(192, 50, 192, 320);
  line(232, 50, 272, 320);
  line(272, 50, 352, 320);
  line(332, 50, 452, 320);
  
  //linhas horizontais
  if (movLinha < 180)
    movLinha = movLinha+1;
  else movLinha = 0;
  
  line(0, 50+movLinha/3, 384, 50+movLinha/3);
  line(0, 110+movLinha/2, 384, 110+movLinha/2);
  line(0, 200+movLinha, 384, 200+movLinha);
}
