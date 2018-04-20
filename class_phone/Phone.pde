class Phone{
  color c;
  float transx;
  float transy;
  float rotation;

  Phone(float px,float py, float rot){
    transx = px;
    transy = py;
    rotation = rot;
    c=color(0);
  }

  void display(){
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
  
  void move() {
    rotation++;
  }
}