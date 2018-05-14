//rodona saltarina
float amplada = 0;
float numPals = 5;
void dibuixaq2(){

q2.beginDraw();
  q2.background(255,0,255);
  
  
  //
   q2.translate(width / 2, height / 2);
    float radius =  200 + amplada;
    float step = numPals;
    float wave = 0;
    float wy = 0;
    float X = 0;
    float cRate = 0;
    
  for(float y = -radius + step / 2; y <= radius - step / 2; y += step){
    wave = abs(pow(sin(y * 0.003 + frameCount * 0.1), 10));
    wy = y - map(wave, 0, 1, -step, step);
    X = sqrt(sq(radius) - sq(y)) * map(wave, 0, 1, 1, 1.1);
    cRate = map(y, -radius + step / 2, radius + step / 2, 0, 1);
    q2.stroke(lerpColor(color(69, 189, 207), color(234, 84, 93), cRate));
    q2.beginShape();
    for(float x = -X; x <= X; x += 1){
      q2.vertex(x, wy);
    }
    q2.endShape();
  }
    
  
  
  //
  q2.endDraw();
  
}