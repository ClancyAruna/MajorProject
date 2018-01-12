class Player {
  //data
  float x, y, size, dx, dy;
  boolean jump, moveLeft, moveRight;
  float ground, gravity;
  //constructor
  Player() {
    ground = height - 65;
    x = width/102 ;
    y = ground;
    size = 25;
    jump = false;
    moveLeft = false;
    moveRight = false;
    dx = 5;
    gravity = 1;
  }
  //behaviour
  //creating square player
  void display() {
    fill(0, 255, 0);
    noStroke();
    rectMode(CENTER);
    rect(x, y, size, size);
  }
  //moving character
  void move() {
    y += dy;
    if (jump) {
      dy = -10;
    }
    
    if (y > ground) {
      y = ground;
      dy = 0;
    }else if(y > 410 && y<420 && x>37 && x<152){
      y = 409;
      dy = 0;
    }else if(y > 326 && y<336 && x>228 && x<341){
      y = 325;
      dy = 0;
    }else if(y > 242 && y<252 && x>417 && x<532){
      y = 241;
      dy = 0;
    }else if(y > 367 && y < 377 && x > 607 && x < 721){
      y = 366;
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