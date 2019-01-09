float t = 0;
float step = 3;
float radius = 250;
float ellipseSize = 50;

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
  
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(t));
  fill(255, 0, 0);
  ellipse(radius, 0, ellipseSize, ellipseSize);
  popMatrix();

  t += step;
}
