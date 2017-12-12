//Dan Schellenberg
//
//2D Arrays Example
//  - loading platformer level data
//  - tiles are from http://open.commonly.cc


Level thisLevel;
Player character;

void setup() {
  size(960, 720);  // 4:3 ratio
  thisLevel = new Level("levels/0.txt", "level_background.png");
  character = new Player(width/2,750,25,5,10);
}

void draw() {
  thisLevel.display();
  character.display();
  character.move();
  


}

void keyPressed() {
  character.handleKeyPressed();
}

void keyReleased() {
  character.handleKeyPressed();
}