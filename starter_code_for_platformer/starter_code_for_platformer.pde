//Dan Schellenberg
//
//2D Arrays Example
//  - loading platformer level data
//  - tiles are from http://open.commonly.cc

Projectile bullet;
Level thisLevel;
Player character;

void setup() {
  size(960, 720);  // 4:3 ratio
  thisLevel = new Level("levels/0.txt", "level_background.png");
  character = new Player(width/2,height/2,25,5,10);
  bullet = new Projectile(character.x, character.y, 10, 10, 5);

}

void draw() {
  thisLevel.display();
  character.move();
  bullet.display();
  bullet.move();
  
  character.display();



}

void keyPressed() {
  character.handleKeyPressed();
  bullet.rKeyPressed();
}

void keyReleased() {
  character.handleKeyReleased();
}