
import controlP5.*;
ControlP5 cp5;
int opactiySlide = 10;


void setup() {
  size(640, 360);
  cp5=new ControlP5(this);
  noFill();
  stroke(255);
  addSliders();
  
}

void draw() 
{
  background(255);
  opacity(opactiySlide);
}
void opacity(int A)
{
  rect(width*0+width/4,height*0+height/4, width/2,height/2);
  fill(0,A);
  
}
void opacitySlider(int val)
{
  opactiySlide = val;
}
 void addSliders()
{
  cp5.addSlider("opacitySlider")
  .setBroadcast(false)
  .setPosition(width -250,20)
  .setSize(40,20)
  .setRange(10,255)
  .setValue(opactiySlide)
  .setLabel("Opacity")
  .setSliderMode(Slider.FLEXIBLE)
  .setBroadcast(true)
  .setCaptionLabel("theLabel1");
}
  

  
  
  
 
  
