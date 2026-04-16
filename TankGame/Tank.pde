class Tank {
  // Member Variable
  float x, y, w, h, speed, health;
  PImage tW, tA, tS, tD;
  char idir;

  // Constructor
  Tank() {
    x = 100;
    y = 100;
    w = 100;
    h = 100;
    speed = 8;
    health = 100;
    tW = loadImage("tankW.png");
    tA = loadImage("tankA.png");
    tS = loadImage("tankS.png");
    tD = loadImage("tankD.png");
    idir = 'w';
  }

  void display() {
    imageMode(CENTER);
    if (idir == 'w') {
      image (tW, x, y);
    } else if (idir == 'a') {
      image (tA, x, y);
    } else if (idir == 's') {
      image (tS, x, y);
    } else if (idir == 'd') {
      image (tD, x, y);
    }
  }

  void move(char dir) {
    if (dir == 'w') {
      idir  = 'w';
      y = y - speed;
    } else if (dir == 's') {
      idir = 's';
      y = y + speed;
    } else if (dir == 'a') {
      idir = 'a';
      x = x - speed;
    } else if (dir == 'd') {
      idir = 'd';
      x = x + speed;
    }
  }
}
