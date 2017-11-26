color c = color(0);
float transx = width/2;
float transy = height/2;
float rotation = 0;

void setup() {
  size(500,500);
}

void draw() {
  background(234,89,245);
  move();
  display();
}

void move() {
  rotation++;
}

void display() {
  pushMatrix();
    translate(transx,transy);
    rotate(radians(rotation));
    rectMode(CENTER);
    fill(c);
    rect(0,0,50,85);
    fill(90);
    rect(0,0-7,46,70);
    ellipse(0,0+34,10,10);
    popMatrix();
}