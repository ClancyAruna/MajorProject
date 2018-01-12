class Enemy {

  // data
  float x, y, size, px, py;
  boolean moveLeft, moveRight;
  float ground;

  // constructor
  Enemy() {
    x = width/3;
    y = character.ground;
    px = 2.5;
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

  //while the enemy is not touching the player, it should move either left or right, depending on is x cordinate, to the player's.
  
}