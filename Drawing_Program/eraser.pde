float prevMouseX = 0;
float prevMouseY= 0;
Boolean eras=false;
void erasSetup() {
}

void eras_mousePressed() {
  prevMouseX = mouseX;
  prevMouseY = mouseY;
}

void eras_mouseDragged() {

  float distanceX;
  float distanceY;

  distanceX = abs(mouseX-prevMouseX);
  distanceY = abs(mouseY-prevMouseY);

  float avDistance;

  avDistance = (distanceX + distanceY)/2;




  avDistance = map(avDistance, 0, 200, widthDefault, 200); //sets range of how thin and thick can be, 1 is min and 100 is max
  //change these values for thickness, could set min as changable variable, then use variable plus the desires difference between min and max for max. (theory)


  stroke(255);
  strokeWeight(avDistance);
  line(mouseX, mouseY, prevMouseX, prevMouseY);
  stroke(0);
  //ellipse(mouseX,mouseY,avDistance,avDistance);

  prevMouseX = mouseX;
  prevMouseY= mouseY;
}
