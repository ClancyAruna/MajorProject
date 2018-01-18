class Player {
  //data
  PImage stand;
  float x, y, dx, dy;
  boolean jump, moveLeft, moveRight;
  float ground, gravity;
  //constructor
  Player() {
    ground = height - 65;
    x = 80 ;
    y = ground;
    jump = false;
    moveLeft = false;
    moveRight = false;
    dx = 10;
    gravity = 2;
    stand = loadImage("0.png");

  }
  //behaviour
  //creating player
  void display() {
    imageMode(CENTER);
    image(stand, x, y);
    imageMode(CORNER);

  }
  //moving character
  void move() {
    y += dy;
    if (jump) {
      dy = -20;
    }
    
    if (y > ground-26) {
      y = ground-26;
      dy = 0;
    }else if(y > 409-30 && y<430-26 && x>37 && x<152){
      y = 409-26;
      dy = 0;
    }else if(y > 325-26 && y<346-26 && x>228 && x<341){
      y = 325-26;
      dy = 0;
    }else if(y > 241-26 && y<262-26 && x>417 && x<532){
      y = 241-26;
      dy = 0;
    }else if(y > 366-26 && y < 387-26 && x > 607 && x < 721){
      y = 366-26;
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