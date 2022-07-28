import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//Global Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
Boolean draw=false;
Boolean stamp=false;
Boolean drawOn=false;
Boolean stampOn=false;
color blue=#2500FF;



//
void setup() {
  //Display Checler
  //Display Orientation Checker
  //Display and CANVAS Checker
  size(800, 600); //Landscape (Protrait or Square)
  //
  CANVAS();
  drawingSurfaceX = appWidth*0+appWidth*3/12;
  drawingSurfaceY = appHeight*0;
  drawingSurfaceWidth = appWidth*3/4;
  drawingSurfaceHeight = appHeight*4/5;//REMEMBER TO USE APPWIDTH AND APP HEIGHT, THIS IS SIMPLY FOR DEMONSTRATION  
  drawingDiameter = appWidth*1/100;
  //
  strokeWeight(4);
  rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  strokeWeight(1);
  buttonsSetup();
  rect(rightBottomX, rightBottomY, rightBottomWidth, rightBottomHeight);
  rect(bottomX, bottomY, bottomWidth, bottomHeight);
  popupButtonsSetup();
  //paintBrushsetup();
  airBrushSetup();
  SButtonsSetup();
  SRecSetup();
  musicSetup();
  colorSlider ();


  //
}//End setup
//
void draw() {
  //ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter); //Example Circle Drawing Tool

  musicDraw();

  //
  //
  fill(resetButtonColour);
  if (defaultButtons==true) {
    buttonsDraw();
  }
  if (PenButtons==true) {
    defaultButtons=false; 
    eras=false;
    SButtons=false;
    stampOn=false;
    popupPenButtonsDraw();
  }
  if (PenButtons==false) {
    defaultButtons=true;
  }



  if (SButtons==true) {
    defaultButtons=false; 
    PenButtons=false;
    drawOn=false; 
    stampOn=true;
    SButtonsDraw();
  }
  if (SButtons==false) {
    defaultButtons=true;
  }

  if (eras==true) {
    drawOn=false; 
    stampOn=false;
  }


  //Example Circle Drawing Tool
}

//End draw
//
void keyPressed() 
{ //<>//
  musicKeyPressed();
}//End keyPressed
//
void mousePressed() {
  if ( mouseX>=rightLowX && mouseX<=rightLowX+rightLowWidth && mouseY>=rightLowY && mouseY<=rightLowY+rightLowHeight) 
  { 
    if (eras==false) {
      eras=true;
    } else {
      eras=false;
    }
  }
  if ( mouseX>=SButton2X && mouseX<=SButton2X+SButton2Width && mouseY>=SButton2Y && mouseY<=SButton2Y+SButton2Height)
  {
    SRec=true;
  }

  if (  mouseX>=SButton1X && mouseX<=SButton1X+SButton1Width && mouseY>=SButton1Y && mouseY<=SButton1Y+SButton1Height)
  {
    SRec=false;
    stamp=true;
  }


  if (  mouseX>=penButton3X && mouseX<=penButton3X+penButton3Width && mouseY>=penButton3Y && mouseY<=penButton3Y+penButton3Height)
  {
    penBleed=false;
    paintBrush=false;
    airBrush=true;
  }

  if ( mouseX>=penButton2X && mouseX<=penButton2X+penButton2Width && mouseY>=penButton2Y && mouseY<=penButton2Y+penButton2Height)
  {
    airBrush=false;
    penBleed=false;
    paintBrush=true;
  }

  if (defaultButtons==true) {
    if ( mouseX>=rightTopX && mouseX<=rightTopX+rightTopWidth && mouseY>=rightTopY && mouseY<=rightTopY+rightTopHeight)
    { 
      if (PenButtons==false) {
        PenButtons=true; 
        drawOn=true;
      } else {
        PenButtons=false;
      }
    }
  }
  if ( mouseX>=rightMidX && mouseX<=rightMidX+rightMidWidth && mouseY>=rightMidY && mouseY<=rightMidY+rightMidHeight) 
  { 
    if (SButtons==false) {
      SButtons=true; 
      stampOn=true;
    } else {
      SButtons=false;
    }
  }






  //if(drawOn==true){
  if (  mouseX>=penButton1X && mouseX<=penButton1X+penButton1Width && mouseY>=penButton1Y && mouseY<=penButton1Y+penButton1Height)
  {
    airBrush=false;
    paintBrush=false;
    penBleed=true;
  }

  //if(drawOn==true){


  //if(drawOn==true){


  airBrush_mousePressed();
  paintBrush_mousePressed();
  SRec_mousePressed();
  eras_mousePressed();
}//End mousePressed

void mouseDragged() {
  if (stampOn==true) {
    if ( stamp==true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY< drawingSurfaceY+drawingSurfaceHeight ) 
    {
      ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter);
    }

    if (stamp==true && SRec==true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY< drawingSurfaceY+drawingSurfaceHeight)
    {
      SRec_mouseDragged();
    }
  }

  //if( mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY< drawingSurfaceY+drawingSurfaceHeight) {stamp=true;}

  if (drawOn==true) {
    if (airBrush==true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY< drawingSurfaceY+drawingSurfaceHeight)
    {
      airBrush_mouseDragged();
    }

    if (penBleed==true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY< drawingSurfaceY+drawingSurfaceHeight)
    {
      penBleed_mouseDragged();
    }

    if (paintBrush==true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY< drawingSurfaceY+drawingSurfaceHeight)
    {
      paintBrush_mouseDragged();
    }
  }
  if (eras==true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY< drawingSurfaceY+drawingSurfaceHeight)
  {
    eras_mouseDragged();
  }
}


//
//End MAIN Program
