Phone[] myPhonesArray = new Phone[15];


void setup() {
  size(500,500);
  for(int i=0;i<myPhonesArray.length;i++){
    float x = random(100,400);
    float y = random(100,400);
    float r = random(0,360);
    myPhonesArray[i]= new Phone(x,y,r);
  }
}

void draw() {
  background(234,89,245);
  for(int i=0;i<myPhonesArray.length;i++){
    myPhonesArray[i].move();
    myPhonesArray[i].display();
  }
}