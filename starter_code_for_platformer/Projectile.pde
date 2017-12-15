class Projectile {
  //data
  PVector location, velocity;
  float x, y, dx, dy, radius;
  boolean wasShot;

  //constructor(s)
  Projectile(float x, float y, float dx, float dy, float radius) {
    location = new PVector(character.x, character.y);
    velocity = new PVector(-0, 0);
    this.x = x;
    this.y = y;
    this.dx = dx;
    this.dy = dy;
    this.radius = radius;
    wasShot = false;
  }

  //behaviour(s)
  void display() {
    fill(255);
    ellipse(x, y, 10, 10);
    move();
  }

  void move() {
      x += dx;
    //y += dy;
  }

  void rKeyPressed() {
    if (key == '1') {
      wasShot = true;
      move();
      
    }
  }
}