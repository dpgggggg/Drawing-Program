import controlP5.*;

int g=10;




void colorSliderg ()
{
  cp5=new ControlP5(this);

  noFill();
  stroke(255);
  addSliders();
}






  


void greenSlider(int val)
{
  g = val;
}

void addSlidersg()
{
  cp5.addSlider("greenSlider")
    .setBroadcast(false)
    .setPosition(500, 600)
    .setSize(200, 20)
    .setRange(1, 255)
    .setValue(g)
    .setLabel("amount of green")
    .setSliderMode(Slider.FLEXIBLE)
    .setBroadcast(true)
    .setCaptionLabel("stroke size");
}
