import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



//Global Variables
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
Boolean draw=false;
//
void setup() {
  //Display Checler
  //Display Orientation Checker
  //Display and CANVAS Checker
  size(500,600); //Landscape (Protrait or Square)
  //
  drawingSurfaceX = width*0;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*3/4;
  drawingSurfaceHeight = height*4/5;//REMEMBER TO USE APPWIDTH AND APP HEIGHT, THIS IS SIMPLY FOR DEMONSTRATION  
  drawingDiameter = width*1/1000;
  //
  rect( drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth,drawingSurfaceHeight);
  //
}//End setup
//
void draw() {
  //ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter); //Example Circle Drawing Tool
   if( draw==true && mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY< drawingSurfaceY+drawingSurfaceHeight ) 
   {line(mouseX, mouseY, pmouseX, pmouseY);
   ellipse( mouseX, mouseY, drawingDiameter, drawingDiameter); //Example Circle Drawing Tool
   }
}//End draw
//
void keyPressed() 
{
 
}//End keyPressed
//
void mousePressed() {
  if( mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY< drawingSurfaceY+drawingSurfaceHeight) 
  {if(draw==false)
{draw=true;}else{draw=false;};
} //End drawing tools
}//End mousePressed
//
//End MAIN Program
