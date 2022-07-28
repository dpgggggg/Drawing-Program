float buttonCombineHeight;
float penButton1X, penButton1Y, penButton1Width, penButton1Height;
float penButton2X, penButton2Y, penButton2Width, penButton2Height;
float penButton3X, penButton3Y, penButton3Width, penButton3Height;
String penButton1Text = "pen(bleeded)";
String penButton2Text = "Brush";
String penButton3Text = "AirBrush";
Boolean PenButtons=false;
color yellow=#D8FF00, darkRed=#FF0000, resetButtonColour=255, buttonFill;
void popupButtonsSetup() {
  penButton1X = rightTopX;
  penButton1Y = rightTopY;
  penButton1Width = rightTopWidth;
  penButton1Height = rightTopHeight;
  //
  penButton2X =rightMidX;
  penButton2Y =rightMidY;
  penButton2Width =rightMidWidth;
  penButton2Height =rightMidHeight;
  //
  penButton3X = rightLowX;
  penButton3Y = rightLowY;
  penButton3Width = rightLowWidth;
  penButton3Height = rightLowHeight;
}


void popupPenButtonsDraw() {

  if (mouseX>=penButton1X && mouseX<=penButton1X+penButton1Width && mouseY>=penButton1Y && mouseY<=penButton1Y+penButton1Height) {
    buttonFill = yellow ;
  } else {
    buttonFill =darkRed;
  }//End Hover-Over
  fill(buttonFill); //
  rect(penButton1X, penButton1Y, penButton1Width, penButton1Height);
  fill(0,0,255);
  text(penButton1Text,penButton1X, penButton1Y, penButton1Width, penButton1Height);
  fill(resetButtonColour);
  //
  //
  if (mouseX>=penButton2X && mouseX<=penButton2X+penButton2Width && mouseY>=penButton2Y && mouseY<=penButton2Y+penButton2Height) {
    buttonFill = yellow ;
  } else {
    buttonFill =darkRed;
  }//End Hover-Over
  fill(buttonFill); //
  rect(penButton2X, penButton2Y, penButton2Width, penButton2Height);
  fill(0,0,255);
  textAlign(CENTER,CENTER);
  text(penButton2Text, penButton2X, penButton2Y, penButton2Width, penButton2Height);
  fill(resetButtonColour);
  //
  //
  //
  if (mouseX>=penButton3X && mouseX<=penButton3X+penButton3Width && mouseY>=penButton3Y && mouseY<=penButton3Y+penButton3Height) {
    buttonFill = yellow ;
  } else {
    buttonFill =darkRed;
  }//End Hover-Over
  fill(buttonFill); //
  rect(penButton3X, penButton3Y, penButton3Width, penButton3Height);
  fill(0,0,255);
  textAlign(CENTER,CENTER);
  text(penButton3Text,penButton3X, penButton3Y, penButton3Width, penButton3Height);
  fill(resetButtonColour);
}
