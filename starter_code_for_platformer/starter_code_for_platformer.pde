//Dan Schellenberg
//
//2D Arrays Example
//  - loading platformer level data
//  - tiles are from http://open.commonly.cc


Level thisLevel;
Player character;
ArrayList<Projectile> bullet = new ArrayList<Projectile>();
//Projectile bullet;

void setup() {
  size(600, 450);  // 4:3 ratio
  thisLevel = new Level("levels/0.txt", "level_background.png");
  character = new Player(width/2, height/2, 25, 5, 10);
  
  //bullet = new Projectile();
  for (int i=0; i<5; i++) {
    bullet.add( new Projectile() );}
}

void draw() {
  thisLevel.display();
  character.move();
  //if (bullet.wasShot == true) {
  //  bullet.display();
  //  bullet.move();
  //}

  character.display();
}

void keyPressed() {
  character.handleKeyPressed();
  //bullet.rKeyPressed();
}

void keyReleased() {
  character.handleKeyReleased();
}