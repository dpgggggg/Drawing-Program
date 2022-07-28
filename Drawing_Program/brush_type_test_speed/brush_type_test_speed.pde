float prevMouseX = 0;
float prevMouseY = 0;






void setup() {
  size(1280,720);
  background(255);
}

void draw() {
  fill(255,255,255,10);
  rect(width,height,0,0);
  
  
}
void mousePressed() {
  prevMouseX = mouseX;
  prevMouseY = mouseY;
}


void mouseDragged() {
  fill(0);
  
  float distanceX;
  float distanceY;
  
  distanceX = abs(mouseX-prevMouseX);
  distanceY = abs(mouseY-prevMouseY);
  
  float avDistance;
  
  avDistance = (distanceX + distanceY)/2;
  
  
  float colorChange = map(avDistance,0, 50,200,10);
  
  avDistance = map(avDistance,0, 200,1,100); //sets range of how thin and thick can be, 1 is min and 100 is max
  //change these values for thickness, could set min as changable variable, then use variable plus the desires difference between min and max for max. (theory)
  
  
  stroke(0, colorChange);
  strokeWeight(avDistance);
  line(mouseX, mouseY, prevMouseX, prevMouseY);
  //ellipse(mouseX,mouseY,avDistance,avDistance);
  
  prevMouseX = mouseX;
  prevMouseY = mouseY;
}
