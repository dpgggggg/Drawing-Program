float rightTopX, rightTopY, rightTopWidth, rightTopHeight;
float rightMidX, rightMidY, rightMidWidth, rightMidHeight;
float rightLowX, rightLowY, rightLowWidth, rightLowHeight;
float rightBottomX, rightBottomY, rightBottomWidth, rightBottomHeight;
float bottomX, bottomY, bottomWidth, bottomHeight;

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
  rightBottomX=appWidth*0;
  rightBottomY=appHeight*0+rightTopHeight*3;
  rightBottomWidth=appWidth/4;
  rightBottomHeight=appHeight/4;
  bottomX=appWidth*0+appWidth*3/12;
  bottomY=appHeight*0+drawingSurfaceHeight;
  bottomWidth=drawingSurfaceWidth;
  bottomHeight=appHeight-drawingSurfaceHeight;
}

void buttonsDraw() {
  rect(rightTopX, rightTopY, rightTopWidth, rightTopHeight);
  rect(rightMidX, rightMidY, rightMidWidth, rightMidHeight);
  rect(rightLowX, rightLowY, rightLowWidth, rightLowHeight);
  rect(rightBottomX, rightBottomY, rightBottomWidth, rightBottomHeight);
  rect(bottomX, bottomY, bottomWidth, bottomHeight);
}
