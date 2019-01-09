float t = -1;
float step = 3;
float h = 20;
float w = 250;

void setup() {
  size(700, 700);
  smooth();
  rectMode(CENTER);
}

void draw() {
  background(255);
  fill(10);
  noStroke();
  rect(width/2, height/2, 150, 300);

  translate(width/2, height/2);
  float posX = w * cos(radians(t));
  float posY = h * sin(radians(t));
  
  //円の大きさを増減させる
  float circleSize = map(sin(radians(t)), -1, 1, 5, 50);
  
  stroke(255, 0, 0);
  strokeWeight(circleSize);
  
  //円の大きさが6以上の時だけ描画
  if (circleSize >= 6) {
    point(posX, posY);
  }

  t += step;
}
