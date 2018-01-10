class Player {
  //data
  float x, y, size, dx, dy;
  boolean jump, moveLeft, moveRight;
  float ground, gravity;
  //constructor
  Player() {
    ground = height - 65;
    x = width/2 ;
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
    } else {
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