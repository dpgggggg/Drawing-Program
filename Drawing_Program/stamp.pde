float SButton1X, SButton1Y, SButton1Width, SButton1Height;
float SButton2X, SButton2Y, SButton2Width, SButton2Height;
String SButton1Text = "circles";
String Sbutton2Text = "rectangles";

Boolean SButtons=false;
color Green=#00FA38;


void SButtonsSetup() {
  SButton1X = rightTopX;
  SButton1Y = rightTopY;
  SButton1Width = rightTopWidth;
  SButton1Height = rightTopHeight;
  //
  SButton2X =rightMidX;
  SButton2Y =rightMidY;
  SButton2Width =rightMidWidth;
  SButton2Height =rightMidHeight;
  //
}


void SButtonsDraw() {


  if (mouseX>=SButton1X && mouseX<=SButton1X+SButton1Width && mouseY>=SButton1Y && mouseY<=SButton1Y+SButton1Height) {
    buttonFill = blue ;
  } else {
    buttonFill =Green;
  }//End Hover-Over
  fill(buttonFill); //
  rect(SButton1X, SButton1Y, SButton1Width, SButton1Height);
  fill(255,0,0);
  text(SButton1Text, SButton1X, SButton1Y, SButton1Width, SButton1Height);
  fill(resetButtonColour);
  //
  //
  if (mouseX>=SButton2X && mouseX<=SButton2X+SButton2Width && mouseY>=SButton2Y && mouseY<=SButton2Y+SButton2Height) {
    buttonFill = blue ;
  } else {
    buttonFill =Green;
  }//End Hover-Over
  fill(buttonFill); //
  rect(SButton2X, SButton2Y, SButton2Width, SButton2Height);
  fill(255,0,0);
  text(Sbutton2Text, SButton2Y, SButton2Width, SButton2Height);
  fill(resetButtonColour);
  //
  //
  //
}
