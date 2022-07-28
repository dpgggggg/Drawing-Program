import controlP5.*;

int r=10;




void colorSliderr ()
{
  cp5=new ControlP5(this);

  noFill();
  stroke(255);
  addSliders();
}






  


void redSlider(int val)
{
  r = val;
}

void addSlidersr()
{
  cp5.addSlider("redSlider")
    .setBroadcast(false)
    .setPosition(500, 550)
    .setSize(200, 20)
    .setRange(1, 255)
    .setValue(r)
    .setLabel("amount of red")
    .setSliderMode(Slider.FLEXIBLE)
    .setBroadcast(true)
    .setCaptionLabel("stroke size");
}
