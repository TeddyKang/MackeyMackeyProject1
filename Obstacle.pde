class Obstacle {
  float posX;
  float posY;

  float velX;
  float velY;

  float size;

  Obstacle() {
    posX = random(width);
    posY = random(height - 50);

    velX = random(10);
    velY = random(10);

    size = 5;
  }

  void update() {
    display();
    move();
    bounce();
    gravity();
    imageMode(CENTER);
  }

  boolean CheckCollision(float x, float y) {
    float d1 = dist(posX, posY, x, y);
    if (d1 < size/2 + 5) {
      return true;
    }
    return false;
  }

  void display() {
    fill(255, 255, 0);
    ellipse(posX, posY, size, size);
    rect(posX, posY, size, size);

    smooth();
  }

  void move() {
    posX += velX;
    posY += velY;
  }

  void bounce() {
    if ((posX >= width) || (posX <= 0)) {
      velX *= -1;
    }
    if ((posY >= height) || (posY <= 0)) {
      velY *= -1;
    }
  }

  void gravity() {
    velY -= random(0.5);
  }
}