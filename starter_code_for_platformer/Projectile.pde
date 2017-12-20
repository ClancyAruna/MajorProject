class Projectile {
  //data
  PVector location, velocity;
  float x, y, dx, dy, radius;
  boolean wasShot;

  //constructor(s)
  Projectile() {
    //location = new PVector(character.x, character.y);
    //velocity = new PVector(-0, 0);
    //this.x = x;
    //this.y = y;
    //this.dx = dx;
    //this.dy = dy;
    //this.radius = radius;
    wasShot = false;
    this.x = character.x;
    this.y = character.y;
    this.dx = 10;
    this.radius = 5;
  }

  //behaviour(s)
  void display() {
    fill(255);
    //float x = character.x;
    ellipse(character.x, character.y, 10, 10);
    //move();
  }

  void move() {
      bullet.x += dx;
      //y += dy;
  }

  void rKeyPressed() {
    if (key == '1') {
      wasShot = true;
      //move();
      
    }
  }
}