Phone myPhone;


void setup() {
  size(500,500);
  myPhone = new Phone(width/2,height/2,0);
}

void draw() {
  background(234,89,245);
  myPhone.move();
  myPhone.display();
}