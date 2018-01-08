class Player {
  //data
  float x, y, size, dx, dy;
  boolean jump, moveLeft, moveRight;
  float ground, gravity;
  //constructor
  Player() {
    ground = height - 50;
    x = width/2 ;
    y = ground;
    size = 25;
    jump = false;
    moveLeft = false;
    moveRight = false;
    dx = 5;
    gravity = 0.5;
  }
  //behaviour
  void display() {
    fill(0, 255, 0);
    noStroke();
    rectMode(CENTER);
    rect(x, y, size, size);
  }
  void move() {
      if (y >ground) {
        y= ground;
        dy = 0;
      }
      else{
        dy += gravity;}
<<<<<<< HEAD
    
=======
    }
>>>>>>> f9ce8f652cace717586ea7ed046fcdf8438b306d
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
  void jump(){
   dy = -10; 
  }
  void handleKeyPressed() {
    if (key == ' ') {
      jump();
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