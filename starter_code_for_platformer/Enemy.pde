class Enemy {

  // data
  float x, y, size, px, py;
  boolean moveLeft, moveRight;

  // constructor
  Enemy(float _x, float _y, float _size, float _px, float _py) {
    x = _x;
    y = _y;
    px = _px;
    py = _py;
    size = _size;
    moveLeft = false;
    moveRight = true;
  }

  //behaiviors
  void display() {
    fill(255, 0, 0);
    noStroke();
    rectMode(CENTER);
    rect(x, y, size, size);
  }

  void move() {
    
    
  }
}