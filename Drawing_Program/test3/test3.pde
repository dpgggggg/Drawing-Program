PImage playButton;
PImage pauseButton;
int bX = 150, bY = 150;
int aX = 0, aY =0;
color c = randomColor();

void setup(){
  size (400,400);
  pauseButton= loadImage("pause.png");
  pauseButton.resize(100,0);
  playButton = loadImage("play.png");
  playButton.resize(100,0);
}
void draw(){
  background(c);
  image(playButton, bX, bY, 50, 50);
  image(pauseButton, aX, aY, 50,50);
}


void mouseClicked(){
  if( mouseX > bX && mouseX < (bX + playButton.width) &&
      mouseY > bY && mouseY < (bY + playButton.height)){
        c = randomColor();
      };
    }

color randomColor(){
  return color(random(255), random(255), random(255));
}
