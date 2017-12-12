class Player{
  //data
  int x,y,size;
  boolean moveUp, moveLeft, moveRight;
  //constructor
  Player(){
  x = width/2;
  y = height/2;
  size = 75;
  
  }
  //behaviour
 
  void move() {
    if (moveUp) {
      if (y >= 0 +45) {
        y-= dyL;
      }
    }
    if (moveDown) {
      if (y<=height-45) {
        y += dyL;
      }
    }
    if (moveUp2) {
      if (y >= 0+45) {
        y -= dyR;
      }
    }
    if (moveDown2) {
      if (y<=height-45) {
        y +=dyR;
      }
    }
  }
  void handleKeyPressed() {
    if (key == 'w') {

      moveUp = true;
    }
    if (key == 's' ) {
      if (y<=height) {
        moveDown =true;
      }
    }
    if (key == 'a' ) {
      moveUp = true;
    }
    if (key == 'd' ) {
      moveDown =true;
    }
    if (keyCode == UP ) {
      moveUp2 = true;
    }
    if (keyCode == DOWN ) {
      moveDown2 =true;
    }
    if (keyCode == LEFT ) {
      moveDown2 =true;
    }
    if (keyCode == RIGHT ) {
      moveUp2 = true;
    }
  }
  void handleKeyReleased() {
    if (key == 'w') {
      moveUp = false;
    }
    if (key == 's' ) {
      moveDown =false;
    }
    if (key == 'a' ) {
      moveUp = false;
    }
    if (key == 'd' ) {
      moveDown =false;
    }
    if (keyCode == UP ) {
      moveUp2 = false;
    }
    if (keyCode == DOWN ) {
      moveDown2 =false;
    }
    if (keyCode == LEFT ) {
      moveDown2 =false;
    }
    if (keyCode == RIGHT ) {
      moveUp2 = false;
    }
  }
}