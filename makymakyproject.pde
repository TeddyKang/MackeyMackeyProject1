Backgroundlines blines;
Timer timer;

ArrayList<Obstacle> obs;

float numberofballs = 25;

float bspeed = 35;

boolean up;
boolean down;
boolean left;
boolean right;

float bposX = 0;
float bposY = 733.5;

float bsize = 35;

void setup() {
  fullScreen();
  background(255);
  textSize(25);

  blines = new Backgroundlines();

  obs = new ArrayList<Obstacle>();

  timer = new Timer();

  for (int i = 0; i < numberofballs; i++) {
    obs.add(new Obstacle());
  }
  smooth();
}


void draw() {
  
  if (key == 'r') {
    Reset();
  }
  
  timer.update();
  
  blines.update();
  
  for (Obstacle Pin : obs) {
    Pin. update();
    if (Pin. CheckCollision(bposX + (35)/2, bposY + (35)/2) == true) {
      
    }
  }
  

  fill(0);
  stroke(255);
  rect(bposX, bposY, bsize, bsize);
  noFill();
  noStroke();

  if (keyPressed) {
    if (key=='w') {
      up = true;
    }
    if (key=='s') {
      down = true;
    }
    if (key=='a') {
      left = true;
    }
    if (key=='d') {
      right = true;
    }

    if (up == true) {
      bposY -= bspeed;
    }
    if (down == true) {
      bposY += bspeed;
    }
    if (left == true) {
      bposX -= bspeed;
    }
    if (right == true) {
      bposX += bspeed;
    }
    noStroke();
  }

  if (bposX > width || bposY > height) {
    fill(255);
    text("Wrong Way! Press 'r' to respawn.", 65, 225, 1000, 1000);
    noFill();
  }
  if (bposX < 0 || bposY < 0) {
    fill(255);
    text("Wrong Way! Press 'r' to respawn.", 65, 225, 1000, 1000);
    noFill();
  }
}

void keyReleased() {
  if (key == 'w') {
    up = false;
  }
  if (key == 's') {
    down = false;
  }
  if (key == 'a') {
    left = false;
  }
  if (key == 'd') {
    right = false;
  }
}

void Reset() {
  background(255);
}