//Dan Schellenberg
//
//2D Arrays Example
//  - loading platformer level data
//  - tiles are from http://open.commonly.cc


//Projectile bullet;
Level thisLevel;
Player character;
ArrayList<Projectile> bullet = new ArrayList<Projectile>();

//boolean wasShot;

void setup() {
  size(800, 600);  // 4:3 ratio
  thisLevel = new Level("levels/0.txt", "level_background.png");
  character = new Player(width/2, 25, 5, 10);
  //bullet = new Projectile();
  //for (int i=0; i<5; i++) {
  //  bullet.add( new Projectile() );
  //wasShot = false;
  //}
}

void draw() {
  thisLevel.display();
  character.move();
  character.display();
  //bullet.
  //if (wasShot == true) {
    
    for (Projectile thisBullet : bullet) {
      thisBullet.bounceBall(); 
      //wasShot = false;
    //}
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