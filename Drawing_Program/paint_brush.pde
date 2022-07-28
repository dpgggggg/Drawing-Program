float prevMouseX1 = 0;
float prevMouseY1 = 0;
PImage brush1;
Boolean paintBrush=false;
//

void paintBrushsetup()
{
  imageMode(CENTER);
  brush1 = loadImage("brush1.png");
}
void paintBrush_mousePressed() {
  prevMouseX1 = mouseX;
  prevMouseY1 = mouseY;
}

void paintBrush_mouseDragged() {

  float brushAngle1 = atan2(mouseX-prevMouseX1, mouseY - prevMouseY1);

  for (int i = 0; i < 5; i++) {
    float jiggleColor = random(-10, 10);
    //tint(100+jiggleColor,0,170+jiggleColor, 150);
    tint(r,g,b, 200);


    pushMatrix();
    float jiggle = random(-1, 1);
    //translate(mouseX+jiggle, mouseY+jiggle);
    translate(mouseX, mouseY);

    float jiggleAngle = random(-1, 1);
    //rotate(brushAngle+(3*PI/2) + jiggleAngle);
    rotate(brushAngle1+(3*PI/2));

    float jiggleScale = random(-0.03, 0.03);
    scale(.05 + jiggleScale);
    //scale(.05 );
    image(brush1, 0, 0, widthDefault, widthDefault);//300,300 width and height
    popMatrix();
  }
}
