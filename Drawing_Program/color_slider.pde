import controlP5.*;
ControlP5 cp5;
int widthDefault=10;




void colorSlider ()
{
  cp5=new ControlP5(this);

  noFill();
  stroke(255);
  addSliders();
}





void avDistance(int w)
{
  float distanceX;
  float distanceY;

  distanceX = abs(mouseX-prevMouseX);
  distanceY = abs(mouseY-prevMouseY);

  float avDistance;

  avDistance = (distanceX + distanceY)/2;


  float colorChange = map(avDistance, 0, 50, 200, 10);

  avDistance = map(avDistance, 0, 200, w, 500); //sets range of how thin and thick can be, 1 is min and 100 is max
  //change these values for thickness, could set min as changable variable, then use variable plus the desires difference between min and max for max. (theory)


  stroke(r,g,b, colorChange);
  strokeWeight(avDistance);
  line(mouseX, mouseY, prevMouseX, prevMouseY);
  //ellipse(mouseX,mouseY,avDistance,avDistance);
  strokeWeight(1);

  prevMouseX = mouseX;
  prevMouseY = mouseY;
}


void widthSlider(int val)
{
  widthDefault = val;
}

void addSliders()
{
  cp5.addSlider("widthSlider")
    .setBroadcast(false)
    .setPosition(500, 500)
    .setSize(200, 20)
    .setRange(1, 400)
    .setValue(widthDefault)
    .setLabel("size of stroke")
    .setSliderMode(Slider.FLEXIBLE)
    .setBroadcast(true)
    .setCaptionLabel("stroke size");
}
