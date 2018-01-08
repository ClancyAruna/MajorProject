class Enemy {

  // data
  float x, y, size, px, py;
  boolean moveLeft, moveRight;
  float ground;

  // constructor
  Enemy() {
    x = width/3;
    y = character.ground;
    px = 5;
    //py = _py;
    size = 25;
    moveLeft = false;
    moveRight = false;
    
  }

  //behaiviors
  void display() {
    fill(255, 0, 0);
    noStroke();
    rectMode(CENTER);
    rect(x, y, size, size);
  }

  void move() {
    if (moveLeft == true) {
      
       
    }
    
    
  }
}