class Bigsnow implements Snow {
  int x = 0, y = 0, z = 0, size = 0;
  double xSpeed = 0, ySpeed = 0;
  
  Bigsnow() {
    x = (int) random(-300, 300);
    y = (int) random(-1000, -10);
    z = (int) random(-300, 300);
    xSpeed = random(-1, 1);
    ySpeed = random(2, 6);
    size = (int) random(1, 10);
  }
  
  void update() {
    x += xSpeed;
    y += ySpeed;
    if(y >= -size/2) {
    ySpeed = 0;
    xSpeed = 0;
    }
  }
  
  void show() {
    fill(255);
    translate(x, y, z);
    sphere(size);
    translate(-x, -y, -z);
  }
}
