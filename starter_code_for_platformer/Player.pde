class Player {
  //data
  PImage stand;
  float x, y, dx, dy;
  boolean jump, moveLeft, moveRight;
  float ground, gravity;
  //constructor
  Player() {
    ground = height - 65;
    x = width/102 ;
    y = ground;
    jump = false;
    moveLeft = false;
    moveRight = false;
    dx = 5;
    gravity = 1;
    stand = loadImage("0.png");
  }
  //behaviour
  //creating square player
  void display() {
    image(stand, x, y);
  }
  //moving character
  void move() {
    y += dy;
    if (jump) {
      dy = -10;
    }
    
    if (y > ground-60) {
      y = ground-60;
      dy = 0;
    }else if(y > 410-60 && y<420-60 && x>37 && x<152){
      y = 409-60;
      dy = 0;
    }else if(y > 326-60 && y<336-60 && x>228 && x<341){
      y = 325-60;
      dy = 0;
    }else if(y > 242-60 && y<252-60 && x>417 && x<532){
      y = 241-60;
      dy = 0;
    }else if(y > 367-60 && y < 377-60 && x > 607 && x < 721){
      y = 366-60;
      dy = 0;
    }
    else {
      dy += gravity;
    }


    if (moveLeft) {
      if (x>=0+25) {
        x -= dx;
      }
    }
    if (moveRight) {
      if (x <= width-25) {
        x += dx;
      }
    }
  }

  //goes to key pressed function in main tab
  void handleKeyPressed() {
    if (key == ' ') {
      jump = true;
    }
    if (key == 'a' ) {
      moveLeft = true;
    }
    if (key == 'd' ) {
      moveRight =true;
    }
  }
  void handleKeyReleased() {
    if (key == ' ') {
      jump = false;
    }
    if (key == 'a' ) {
      moveLeft = false;
    }
    if (key == 'd' ) {
      moveRight =false;
    }
  }
}