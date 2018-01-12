class Health {
  //data
  float hp, maxHP;
  float x, y, hx, hy;
  //constructor
  Health(float _hp, float _maxHP) {
    hp = _hp;
    maxHP = _maxHP;
    x = 10;
    y = 10;
    hx = badGuy.x;
    hy = badGuy.y;
    
  }
  
  //behaiviors
  void display() {
    fill(0);
    rectMode(CORNER);
    //back health bar
    rect(hx, hy - 25, maxHP, 10);
    // actual health bar
    fill(0,255,0);
    rect(hx, hy - 25, hp, 10);   
  }
  
  void move() {
    
      }
    
  
}