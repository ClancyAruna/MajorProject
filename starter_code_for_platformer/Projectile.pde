class Projectile {
  //data
  boolean onScreen;
  float x, y, size, dx, dy;

  //constructor
  Projectile() {
    x = character.x;
    y = character.y;
    size = 10;
    dx = 20;//random(-20, 20);
    dy = 20;// random(-20, 20);
  }

  //behaviour
  void bounceBall() {
    //move ball
    x += dx;
    //y += dy;

    //bounceIfRequired();

    //display ball
    fill(0);
    ellipse(x,y, size, size);
  }

  void bounceIfRequired() {
    //is it hitting the right or left side?
    if ( (x > width - size/2) || (x < 0 + size/2) ) {
      dx *= -1;
    }

    //is it hitting the top or bottom?
    if ( (y > height - size/2) || (y < 0 + size/2) ) {
      dy *= -1;
    }
  }
  
  boolean isClicked(float _x, float _y) {
    float distanceFromCenter = dist(x, y, _x, _y);
    if (distanceFromCenter < size/2) {
      return true;
    }
    else {
      return false;
    }
  }
}