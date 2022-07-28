float rightTopX, rightTopY, rightTopWidth, rightTopHeight;
float rightMidX, rightMidY, rightMidWidth, rightMidHeight;
float rightLowX, rightLowY, rightLowWidth, rightLowHeight;
float rightBottomX, rightBottomY, rightBottomWidth, rightBottomHeight;
float bottomX, bottomY, bottomWidth, bottomHeight;
String RightTopText="Pens";
String RightMidText="Stamps";
String RightLowText="Eraser";
Boolean defaultButtons=true;

int appWidth;
int appHeight;

void buttonsSetup() {
  //Population
  appWidth=width;
  appHeight=height;
  int xCenter=appWidth/2;
  int yCenter=appHeight/2;
  rightTopX=appWidth*0;
  rightTopY=appHeight*0;
  rightTopWidth=appWidth/4;
  rightTopHeight=appHeight/4;
  rightMidX=appWidth*0;
  rightMidY=appHeight*0+rightTopHeight;
  rightMidWidth=appWidth/4;
  rightMidHeight=appHeight/4;
  rightLowX=appWidth*0;
  rightLowY=appHeight*0+rightTopHeight*2;
  rightLowWidth=appWidth/4;
  rightLowHeight=appHeight/4;
  /*rightBottomX=appWidth*0;
   rightBottomY=appHeight*0+rightTopHeight*3;
   rightBottomWidth=appWidth/4;
   rightBottomHeight=appHeight/2;
   bottomX=appWidth*0+appWidth*3/12;
   bottomY=appHeight*0+drawingSurfaceHeight;
   bottomWidth=drawingSurfaceWidth;
   bottomHeight=appHeight-drawingSurfaceHeight;*/
}

void buttonsDraw() {

  
 
  fill(255,100);
   
  rect(rightTopX, rightTopY, rightTopWidth, rightTopHeight);
  rect(rightMidX, rightMidY, rightMidWidth, rightMidHeight);
  rect(rightLowX, rightLowY, rightLowWidth, rightLowHeight);
  
  textFont(titleFont, 30);
  textAlign(CENTER,CENTER);
  
  fill(255,0,0);
  text(RightTopText, rightTopX, rightTopY, rightTopWidth, rightTopHeight);
  textAlign(RIGHT,CENTER);
  text(RightMidText, rightMidY, rightMidWidth, rightMidHeight);
  textAlign(CENTER,CENTER);
  text(RightLowText,rightLowX, rightLowY, rightLowWidth, rightLowHeight);
  fill(255);
  
 
  
  
  
  
}
