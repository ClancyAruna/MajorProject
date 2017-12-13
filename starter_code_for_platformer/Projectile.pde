class Projectile {
  //data
  float x, y, dx, dy, radius;
  boolean wasShot;

  //constructor(s)
  Projectile(float x, float y, float dx, float dy, float radius) {
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
    ellipse(character.x,character.y, radius*2, radius*2);
  }

  void move() {
    if (wasShot == true){
      x += dx;
    }
      //y += dy;
  }

  void rKeyPressed() {
    if (key == '1') {
      wasShot = true;}
    }
  }