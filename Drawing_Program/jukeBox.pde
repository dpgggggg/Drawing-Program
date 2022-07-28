Minim minim; //creates object to access all functions
AudioPlayer song1;//creates a playlist
AudioMetaData songMetaData1;
AudioMetaData songMetaData2;
PImage playButton;
//PImage pauseButton;
PImage fastforwardButton;
PImage reverseButton;
PFont titleFont;
color black=#000000, purple=#490679, resetWhite=255;
float titleX, titleY, titleWidth, titleHeight;
float instructionX, instructionY, instructionWidth, instructionHeight;
int pauseX = appWidth*0, pauseY = appHeight+(appHeight/4)/4;
String instructions="press P to play, to loop press i, to mute press M, to fast forward press F, to reverse press R.";


void musicSetup() {
  minim = new Minim(this);
  song1=minim.loadFile("Contrast - Anno Domini Beats.mp3");//able to pass aboslute pate, file name & extension, and URL
  songMetaData1 = song1.getMetaData();
  songMetaData2 = song1.getMetaData();

  titleX= appWidth*0;
  titleY= appHeight*0+rightTopHeight*3;
  titleWidth= appWidth/4;
  titleHeight= (appHeight/4)/4;
 
  
  instructionX=appWidth*0;
  instructionY=titleY+38;
  instructionWidth=titleWidth;
  instructionHeight=titleHeight*2+40;
  //
  titleFont=createFont ("Harrington", 55);
  /*rightBottomX=appWidth*0;
   rightBottomY=appHeight*0+rightTopHeight*3;
   rightBottomWidth=appWidth/4;
   rightBottomHeight=appHeight/4;*/


  //pauseButton= loadImage("pause.png");
 //pauseButton.resize(100, 0);
  playButton = loadImage("play.png");
  playButton.resize(100, 0);
}
void musicDraw() {
  //image(pauseButton, pauseX, pauseY, titleWidth/4, titleHeight);
  rect(titleX, titleY, titleWidth, titleHeight);
  rect(instructionX, instructionY, instructionWidth, instructionHeight);
  fill(purple);//Ink
  textAlign(CENTER, CENTER); //Align X&Y
  textFont(titleFont, 15);
  text(instructions,instructionX, instructionY, instructionWidth, instructionHeight);
  textFont(titleFont, 30);
  text( songMetaData1.title(), titleX, titleY, titleWidth, titleHeight);
  fill(resetWhite);
  //image(pauseButton, pauseX, pauseY);
}

void musicButtons() {
}

void musicKeyPressed() {
  if ( key=='p' || key=='P') song1.play();
  if (key=='i' || key=='I') song1.loop();
  if ( key=='m' || key=='M') {//Mute Button
    if (song1.isMuted()) {
      song1.unmute();
    } else {
      song1.mute();
    }
    if ( key =='f' || key=='F' ) song1.skip(1000);
    if (key =='r' || key=='R' ) song1.skip(-1000);
    if ( key =='s' || key =='S') {//STOP Button
      if ( song1.isPlaying() ) 
      { 
        song1.pause(); 
        song1.rewind();
      } else { //Song is not playing
        song1.rewind();
      }
    }//End STOP Button
    if ( key =='p' || key=='P' ) {//PAUSE Button
      if ( song1.isPlaying() ) {
        song1.pause();
      } else if ( song1.position()>= song1.length()- song1.length()*1/8) {
        song1.rewind();
        song1.pause();
      } else {
        song1.play();
      }
    }
  }
}
