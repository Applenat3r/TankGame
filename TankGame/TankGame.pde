// Emalee Sorensen | Apr 14 2026 | TankGame
PImage bg;
Tank tank1;
ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>();

void setup() {
  size(500, 500);
  bg = loadImage("bg1.png");
  tank1 = new Tank();
  obstacles.add(new Obstacle(250, 250));
  obstacles.add(new Obstacle(230, 130));
  obstacles.add(new Obstacle(140, 300));
}

  void draw() {
    background(127);
    imageMode(CORNER);
    image(bg, 0, 0);
    tank1.display();

    for (int i = 0; i < obstacles.size(); i++) {
      Obstacle obs = obstacles.get(i);
      obs.display();
      obs.move();
    }
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
