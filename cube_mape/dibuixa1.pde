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
  
  if(escena == 3){
      q2.translate(width / 2, height / 2);
  float radius = 200;
  float step = 5;
  for(float y = -radius + step / 2; y <= radius - step / 2; y += step){
    float wave = abs(pow(sin(y * 0.003 + frameCount * 0.1), 10));
    float wy = y - map(wave, 0, 1, -step, step);
    float X = sqrt(sq(radius) - sq(y)) * map(wave, 0, 1, 1, 1.1);
    float cRate = map(y, -radius + step / 2, radius + step / 2, 0, 1);
    q2.stroke(lerpColor(color(69, 189, 207), color(234, 84, 93), cRate));
    q2.beginShape();
    for(float x = -X; x <= X; x += 1){
      vertex(x, wy);
    }
    q2.endShape();
  }
    q1.endDraw();

}