void dibuixaq2(){

  q2.beginDraw();
  
  color c = lerpColor(color(255,255,255), color(0,0,0), 1);
  fill(c);
  rect(0,0,200,200);

  
  q2.beginShape();
  q2.noStroke();
  q2.fill(255,255,255);
    q2.vertex(0,0);
      q2.fill(255,255,255);
    q2.vertex(width,0);
      q2.fill(0,0,0);
    q2.vertex(width,height);
      q2.fill(255,255,255);

    q2.vertex(0,height);

  q2.endDraw();
  
}