/**
 * Scrollbar. 
 * 
 * Move the scrollbars left and right to change the positions of the images. 
 */

HScrollbar hs1, hs2;  // Two scrollbars


void setup() {
  size(640, 360);
  noStroke();
  
  hs1 = new HScrollbar(0, height/2-8, width/2, 16, 16);
 
  
  // Load images
  
}

void draw() {
  background(255);
  
  // Get the position of the img1 scrollbar
  // and convert to a value to display the img1 image
  float value=hs1.value;
  fill(255,0,0,value);
  rect(width*0+width/4,height*0+height/4, width/4,height/4);
  fill(255,0,0,value);
  
  
  // Get the position of the img2 scrollbar
  // and convert to a value to display the img2 image
 
 
  hs1.update();

  hs1.display();
  
  
  stroke(0);
  
}


class HScrollbar {
  int swidth, sheight;    // width and height of bar
  float xpos, ypos;       // x and y position of bar
  float spos, newspos;    // x position of slider
  float sposMin, sposMax; // max and min values of slider
  int loose;              // how loose/heavy
  boolean over;           // is the mouse over the slider?
  boolean locked;
  float ratio;
  float value;

  HScrollbar (float xp, float yp, int sw, int sh, int l) {
    swidth = sw;
    sheight = sh;
    int widthtoheight = sw - sh;
    ratio = (float)sw / (float)widthtoheight;
    xpos = width/3;
    ypos = height*0+height*3/4;
    spos = xpos + swidth/2 - sheight/2;
    newspos = spos;
    sposMin = xpos;
    sposMax = xpos + swidth - sheight;
    loose = l;
    value= dist(xpos,ypos,newspos,newspos);
  }

  void update() {
    if (overEvent()) {
      over = true;
    } else {
      over = false;
    }
    if (mousePressed && over) {
      locked = true;
    }
    if (!mousePressed) {
      locked = false;
    }
    if (locked) {
      newspos = constrain(mouseX-sheight/2, sposMin, sposMax);
    }
    if (abs(newspos - spos) > 1) {
      spos = spos + (newspos-spos)/loose;
    }
  }

  float constrain(float val, float minv, float maxv) {
    return min(max(val, minv), maxv);
  }

  boolean overEvent() {
    if (mouseX > xpos && mouseX < xpos+swidth &&
       mouseY > ypos && mouseY < ypos+sheight) {
      return true;
    } else {
      return false;
    }
  }

  void display() {
    noStroke();
    fill(204);
    rect(xpos, ypos, swidth, sheight);
    if (over || locked && mouseX > xpos && mouseX < xpos+swidth &&
       mouseY > ypos && mouseY < ypos+sheight) {
      fill(0,0,0);
      
     rect(spos, ypos, sheight, sheight);
    } else {
      fill(102, 102, 102);
    }rect(spos, ypos, sheight, sheight);
    
  }

  float getPos() {
    // Convert spos to be values between
    // 0 and the total width of the scrollbar
    return spos * ratio;
  }
}
