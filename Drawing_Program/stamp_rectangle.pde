float prevMouseX2 = 0;
float prevMouseY2 = 0;
PImage brush2;
Boolean SRec=false;
void SRecSetup() {
  imageMode(CENTER);
  brush2 = loadImage("rec.png");
}
void SRec_mousePressed() {
  prevMouseX2 = mouseX;
  prevMouseY2 = mouseY;
}

void SRec_mouseDragged() {

  float brushAngle2 = atan2(mouseX-prevMouseX1, mouseY - prevMouseY1);

  for (int i = 0; i < 5; i++) {
    float jiggleColor = random(-10, 10);
    tint(0+jiggleColor, 150);
    //tint(100,0,170, 200);


    pushMatrix();
    float jiggle = random(-20, 20);
    translate(mouseX+jiggle, mouseY+jiggle);
    //translate(mouseX, mouseY);

    float jiggleAngle = random(-20, 20);
    rotate(brushAngle2+(3*PI/2) + jiggleAngle);
    //rotate(brushAngle1+(3*PI/2));

    float jiggleScale = random(-0.03, 0.03);
    scale(.05 + jiggleScale);
    //scale(.05 );
    image(brush2, 0, 0, widthDefault, widthDefault);//300,300 width and height
    popMatrix();
  }
}
