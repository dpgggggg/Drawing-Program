PImage brush;

Boolean airBrush=false;
void airBrushSetup() {
  imageMode(CENTER);
  brush = loadImage("penicl7.png");
}
void airBrush_mousePressed() {
  prevMouseX = mouseX;
  prevMouseY = mouseY;
}

void airBrush_mouseDragged() {
  float brushAngle = atan2(mouseX-prevMouseX, mouseY - prevMouseY);

  for (int i = 0; i < 5; i++) {
    float jiggleColor = random(-100, 100);
    //tint(100+jiggleColor,0,170+jiggleColor, 200);
    tint(r,g,b, 200);


    pushMatrix();
    float jiggle = random(-1, 1);
    translate(mouseX+jiggle, mouseY+jiggle);
    //translate(mouseX, mouseY);

    float jiggleAngle = random(-1, 1);
    rotate(brushAngle+(3*PI/2) + jiggleAngle);
    //rotate(brushAngle+(3*PI/2));

    float jiggleScale = random(-0.03, 0.03);
    scale(.05 + jiggleScale);
    //scale(.05 );
    image(brush, 0, 0, widthDefault, widthDefault);//300,300 width and height
    popMatrix();
  }
}
