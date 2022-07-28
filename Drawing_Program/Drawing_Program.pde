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
color blue=#2500FF;


//
void setup() {
  //Display Checler
  //Display Orientation Checker
  //Display and CANVAS Checker
  size(800,600); //Landscape (Protrait or Square)
  //
  drawingSurfaceX = width*0+width*3/12;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*3/4;
  drawingSurfaceHeight = height*4/5;//REMEMBER TO USE APPWIDTH AND APP HEIGHT, THIS IS SIMPLY FOR DEMONSTRATION  
  drawingDiameter = width*1/100;
  //
  strokeWeight(4);
  rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth,drawingSurfaceHeight);
  strokeWeight(1);
  buttonsSetup();
  buttonsDraw();
  //
}//End setup
//
void draw() {
  //ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter); //Example Circle Drawing Tool
  
   if( draw==true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY< drawingSurfaceY+drawingSurfaceHeight ) 
   {line(mouseX, mouseY, pmouseX, pmouseY);
   
    //Example Circle Drawing Tool
   }
   //if( stamp==true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY< drawingSurfaceY+drawingSurfaceHeight ) 
   //{ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter);}
   
}//End draw
//
void keyPressed() 
{
 
}//End keyPressed
//
void mousePressed() {
  if( mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY< drawingSurfaceY+drawingSurfaceHeight) 
  {if(draw==false)
{draw=true;}else{draw=false;};}
if( mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY< drawingSurfaceY+drawingSurfaceHeight) 
  {if(stamp==false)
{stamp=true;}else{stamp=false;};
} //End drawing tools
}//End mousePressed
//
//End MAIN Program
