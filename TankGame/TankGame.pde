// Emalee Sorensen | Apr 14 2026 | TankGame
PImage bg;
Tank tank1;
ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>();
ArrayList<Projectile> projectiles = new ArrayList<Projectile>();
int score;

void setup() {
  size(500, 500);
  bg = loadImage("bg1.png");
  tank1 = new Tank();
  obstacles.add(new Obstacle(300, 150));
  obstacles.add(new Obstacle(500, 300));
  obstacles.add(new Obstacle(250, 450));
  score = 0;
}

  void draw() {
    background(127);
    imageMode(CORNER);
    image(bg, 0, 0);
  // Add timer to distribute
   //obstacles.add(new Obstacle(250,250,)
    
// Displaying projectiles
    for (int i = 0; i < obstacles.size(); i++) {
      Obstacle obs = obstacles.get(i);
      obs.display();
      obs.move();
    }
    // Displaying projectiles
    for (int i = 0; i < projectiles.size(); i++) {
      Projectile p = projectiles.get(i);
      p.display();
      //p.move();
    }
    tank1.display();
    scorePanel();
  }
  
  void scorePanel() {
    fill(127,127);
    rectMode(CENTER);
    rect(width/2,30,width,38);
    fill(255);
    textSize(30);
    textAlign(CENTER);
    text("Score:" + score,width/2,38);
  }

  void keyPressed() {
    if (key == 'w') {
      tank1.move('w');
    } else if (key == 's') {
      tank1.move('s');
    } else if (key == 'd') {
      tank1.move('d');
    } else if (key == 'a') {
      tank1.move('a');
    }
  }
  
void mousePressed() {
  projectiles.add(new Projectile (int(tank1.x), int(tank1.y)));
}
