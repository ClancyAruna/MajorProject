class Player {
  //data
  float x, y, size, dx, dy;
  boolean jump, moveLeft, moveRight;
  //constructor
  Player(float _x, float _y, float _size, float _dx, float _dy) {
    x = _x ;
    y = _y;
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
    rect(x, y, size, size);
  }
  void move() {
    if (jump) {
      if (y >= 0 +25) {
        y= (y- dy);
      }
    }
    if (moveLeft) {
      if (x<=width-25) {
        x -= dx;
      }
    }
    if (moveRight) {
      if (x >= 0+25) {
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