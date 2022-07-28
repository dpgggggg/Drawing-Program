import controlP5.*;

int b=10;




void colorSliderb ()
{
  cp5=new ControlP5(this);

  noFill();
  stroke(255);
  addSliders();
}






  


void blueSlider(int val)
{
  b = val;
}

void addSlidersb()
{
  cp5.addSlider("blueSlider")
    .setBroadcast(false)
    .setPosition(500, 570)
    .setSize(200, 20)
    .setRange(1, 255)
    .setValue(b)
    .setLabel("amount of blue")
    .setSliderMode(Slider.FLEXIBLE)
    .setBroadcast(true)
    .setCaptionLabel("stroke size");
}
