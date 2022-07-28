import controlP5.*;
ControlP5 cp5;
int boxLidWidth=20;


void setup()
{ 
  size(650, 750);
  cp5=new ControlP5(this);
  rectMode(CENTER);
  noFill();
  stroke(255);
  addSliders();
  
}
void draw() 
{
  background(15,160,49);
  drawBoxLid(boxLidWidth);
}

void drawBoxLid(int w)
{
  rect(width/2, height/3, 50, 50);
  fill(255,0,0,w);
}

void widthSlider(int val)
{
  boxLidWidth = val;
}
void addSliders()
{
  cp5.addSlider("widthSlider")
  .setBroadcast(false)
  .setPosition(width -250,20)
  .setSize(40,20)
  .setRange(10,255)
  .setValue(10)
  .setLabel("Width of box lid in pixels")
  .setSliderMode(Slider.FLEXIBLE)
  .setBroadcast(true)
  .setCaptionLabel("theLabel1");
  
  
}
