

PImage brush;


float prevMouseX = 0;
float prevMouseY = 0;

void setup(){
  size(1280,720,P2D);
  imageMode(CENTER);
  
  brush = loadImage("brush2.png");
}


void draw() {
 
  
}

void mousePressed() {
  prevMouseX = mouseX;
  prevMouseY = mouseY;
  
}

void mouseDragged(){
 
  float brushAngle = atan2(mouseX-prevMouseX, mouseY - prevMouseY);
  
  for(int i = 0;i < 5;i++){
    float jiggleColor = random(-10,10);
    tint(100+jiggleColor,0,170+jiggleColor, 150);
    //tint(100,0,170, 200);
    
    
    pushMatrix();
    float jiggle = random(-1,1);
    translate(mouseX+jiggle, mouseY+jiggle);
    //translate(mouseX, mouseY);
    
    float jiggleAngle = random(-1,1);
    rotate(brushAngle+(3*PI/2) + jiggleAngle);
    //rotate(brushAngle+(3*PI/2));
    
    float jiggleScale = random(-0.03, 0.03);
    scale(.05 + jiggleScale);
    //scale(.05 );
    image(brush,0,0);//300,300 width and height
    popMatrix();
  }}
