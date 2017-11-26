// Eyeball class //
class Eyeball { 
  PVector pos, p;  // pos for position of eyeball, p for position of pupil
  float rad, r;    // rad for radius of eyeball, r for radius of pupil
  color eyeColor;  // color of eyeball
  float speed;     // speed of the eyeball movement

  // constructor
  Eyeball (float posX_, float posY_, float rad_, color eyeColor_) {
    pos = new PVector(posX_, posY_);
    rad = rad_;
    r = rad_/2;
    p = new PVector(0, 0);
    eyeColor = eyeColor_;
    speed = random(0, 20);
  }

  void update(float mx, float my) {
    PVector mousePos = new PVector(mx, my);
    p = mousePos.sub(pos);        // calculate the vector from eyeball center to (mx,my)
    p = p.mult((rad-r)/p.mag());  // scale the vector so pupil won't go outside the eyeball
  }

  void display() {
    pushMatrix();
    ellipseMode(CENTER);
    noStroke();
    fill(eyeColor);
    translate(pos.x, pos.y+sin(radians((frameCount*int(speed))%360))*r/2);
    ellipse(0, 0, rad*2, rad*2);
    fill(0);
    ellipse(p.x, p.y, r*2, r*2);
    popMatrix();
  }
}