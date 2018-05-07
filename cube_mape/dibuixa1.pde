void dibuixaq1(){
  q1.beginDraw();
  q1.background(q1B,q1G,q1B);
  
  if(creatopos){
    q1.ellipse(random(0,200), random(0,200),3,3);
  }
  
  if(escena == 2){
    q1.background(255,0,0);
    q1.fill(255,255,0);
    q1.ellipse(width*0.5, height*0.5, 100,100);
  }
    q1.endDraw();

}