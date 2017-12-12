class Player {
  //data
  float x, y, size, dx, dy;
  boolean moveUp, moveLeft, moveRight;
  //constructor
  Player(float _x, float _y,float _size, float _dx, float _dy) {
    x = _x ;//   width/2;
    y = _y;//750;
    size = _size;//25;
    moveUp = false;
    moveLeft = false;
    moveRight = false;
    dx = _dx;//5;
    dy = _dy;//10;
  }
  //behaviour
  void display() {
    fill(0, 255, 0);
    noStroke();
    rect(x, y, size, size);
  }
  void move() {
    if (moveUp == true) {
      if (y > 200) {
        y -= 5;
        if (y == 200) {
          moveUp = false;
        }
      }
    } else if (moveUp == false) {
      if (y == 650) {
        y = y + 0;
      } else {
        y = y + 5;
      }
    }
    if (moveRight) {
      x += 5;
    } else if (x == 0) {
      x = x + 0;
    }
    if (moveLeft) {
      x -= 5;
    } else {
      if (x <= 0) {
        x = 0;
      }
      if (x >= 920) {
        x = 920;
      }
    }
  }
  void handleKeyPressed() {
    if (key == 'w') {
      moveUp = true;
    } else if (key == 'a') {
      moveLeft = true;
    } else if (key == 'd') {
      moveRight = true;
    }
  }
  void handleKeyReleased() {
    if (key == 'w') {
      moveUp = false;
    } else if (key == 'a') {
      moveLeft = false;
    } else if (key == 'd') {
      moveRight = false ;
    }
  }
}