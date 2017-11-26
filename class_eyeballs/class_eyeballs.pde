int numberOfEyeballs = 900;

Eyeball[] eyeballs = new Eyeball[numberOfEyeballs]; // create an array of Eyeball

void setup() {
  fullScreen();
  frameRate(30);

  // initialize eyeballs in the eyeballs array
  for (int i = 0; i < numberOfEyeballs; i++) {
    // initialize the eyeball with random position, radius and color
    eyeballs[i] = new Eyeball(random(0, width), random(0, height), random(10,20), color(random(100,255), random(100,255), random(100,255)));
  }

}

void draw() 
{
  background(0);
  // iterate through the eyeballs array, update and display each of them
  for (int i = 0; i < numberOfEyeballs; i++) {
    eyeballs[i].update(mouseX, mouseY);
    eyeballs[i].display();
  }

}