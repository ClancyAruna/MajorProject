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
    
    if (y > ground) {
      y = ground-77;
      dy = 0;
    }else if(y > 410-77 && y<420-77 && x>37 && x<152){
      y = 409-77;
      dy = 0;
    }else if(y > 326-77 && y<336-77 && x>228 && x<341){
      y = 325-77;
      dy = 0;
    }else if(y > 242-77 && y<252-77 && x>417 && x<532){
      y = 241-77;
      dy = 0;
    }else if(y > 367-77 && y < 377-77 && x > 607 && x < 721){
      y = 366-77;
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