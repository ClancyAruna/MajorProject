//Dan Schellenberg
//
//2D Arrays Example
//  - loading platformer level data
//  - tiles are from http://open.commonly.cc


<<<<<<< HEAD
//Projectile bullet;
Level thisLevel;
Player character;
ArrayList<Projectile> bullet = new ArrayList<Projectile>();

//boolean wasShot;
=======
Level thisLevel;
Player character;
ArrayList<Projectile> bullet = new ArrayList<Projectile>();
//Projectile bullet;
>>>>>>> 3201b30f0bb3c1da0ab4db6d3aa7c151bb35154f

void setup() {
  size(600, 450);  // 4:3 ratio
  thisLevel = new Level("levels/0.txt", "level_background.png");
  character = new Player(width/2, height/2, 25, 5, 10);
  
  //bullet = new Projectile();
<<<<<<< HEAD
  //for (int i=0; i<5; i++) {
  //  bullet.add( new Projectile() );
  //wasShot = false;
  //}
=======
  for (int i=0; i<5; i++) {
    bullet.add( new Projectile() );}
>>>>>>> 3201b30f0bb3c1da0ab4db6d3aa7c151bb35154f
}

void draw() {
  thisLevel.display();
  character.move();
<<<<<<< HEAD
=======
  //if (bullet.wasShot == true) {
  //  bullet.display();
  //  bullet.move();
  //}

>>>>>>> 3201b30f0bb3c1da0ab4db6d3aa7c151bb35154f
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
<<<<<<< HEAD
  if (key == '1') {
    //wasShot = true;
    bullet.add( new Projectile() );
  }
=======
  //bullet.rKeyPressed();
>>>>>>> 3201b30f0bb3c1da0ab4db6d3aa7c151bb35154f
}

void keyReleased() {
  character.handleKeyReleased();
}