void test(){
  background(238, 243, 239);
  translate(width / 2, height / 2);
  float radius = 200;
  float step = 5;
  for(float y = -radius + step / 2; y <= radius - step / 2; y += step){
    float wave = abs(pow(sin(y * 0.003 + frameCount * 0.1), 10));
    float wy = y - map(wave, 0, 1, -step, step);
    float X = sqrt(sq(radius) - sq(y)) * map(wave, 0, 1, 1, 1.1);
    float cRate = map(y, -radius + step / 2, radius + step / 2, 0, 1);
    stroke(lerpColor(color(69, 189, 207), color(234, 84, 93), cRate));
    beginShape();
    for(float x = -X; x <= X; x += 1){
      vertex(x, wy);
    }
    endShape();
  }
}