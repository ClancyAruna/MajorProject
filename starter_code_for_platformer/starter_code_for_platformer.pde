//Dan Schellenberg
//
//2D Arrays Example
//  - loading platformer level data
//  - tiles are from http://open.commonly.cc


Level thisLevel;
Player character;
Enemy badGuy;
ArrayList<Projectile> bullet = new ArrayList<Projectile>();


void setup() {
  size(800, 600);  // 4:3 ratio
  thisLevel = new Level("levels/0.txt", "level_background.png");
  character = new Player();
  badGuy = new Enemy();
}

void draw() {
  thisLevel.display();
  character.move();
  character.display();
  badGuy.move();
  badGuy.display();
    
    for (Projectile thisBullet : bullet) {
      thisBullet.bounceBall(); 
  }
}

void keyPressed() {
  character.handleKeyPressed();
  if (key == '1') {
    //wasShot = true;
    bullet.add( new Projectile() );
  }

}

void keyReleased() {
  character.handleKeyReleased();
}