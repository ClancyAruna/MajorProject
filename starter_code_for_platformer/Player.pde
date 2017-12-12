class Player {
  //data
  int x, y, size, dx, dy;
  boolean moveUp, moveLeft, moveRight;
  //constructor
  Player() {
    x = width/2;
    y = height/2;
    size = 25;
    moveUp=false;
    moveLeft=false;
    moveRight=false;
  }
  //behaviour
  void display() {
    fill(0, 255, 0);
    noStroke();
    rect(x, y, size, size);
  }
  void move() {
    if (moveUp) {
      if (y >= 0 +45) {
        y-= dy;
      }
    }
    if (moveLeft) {
      if (y<=height-45) {
        y -= dx;
      }
    }
    if (moveRight) {
      if (y >= 0+45) {
        y += dx;
      }
    }
  }
  void handleKeyPressed() {
    if (key == 'w') {

      moveUp = true;
    }
    if (key == 's' ) {
      if (y<=height) {
        moveLeft =true;
      }
    }
    if (key == 'a' ) {
      moveRight = true;
    }
  }

void handleKeyReleased() {
  if (key == 'w') {
    moveUp = false;
  }
  if (key == 'a' ) {
    moveLeft =false;
  }
  if (key == 'd' ) {
    moveRight = false;
  }
}
}