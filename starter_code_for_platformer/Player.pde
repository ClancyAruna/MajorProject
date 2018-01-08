class Player {
  //data
  float x, y, size, dx, dy;
  boolean jump, moveLeft, moveRight;
  float ground, gravity;
  //constructor
  Player(float _x, float _size, float _dx, float _dy) {
    ground = height - 50;
    gravity = 0.5;
    x = _x ;
    y = ground;
    size = _size;
    jump = false;
    moveLeft = false;
    moveRight = false;
    dx = _dx;
    dy = _dy;
  }
  //behaviour
  void display() {
    fill(0, 255, 0);
    noStroke();
    rectMode(CENTER);
    rect(x, y, size, size);
  }
  void move() {
    if (jump) {
      if (y >ground) {
        y= ground;
        dy = 0;
      }
      else{
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



//class for surface jumping. ask for demo?