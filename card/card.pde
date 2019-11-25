float rotX = 0, rotY = 0;
ArrayList<Snow> snowflakes = new ArrayList<Snow>();

void setup() {
  size(1000, 600, P3D);
  background(0);
  
  for(int i = 0; i < 250; i++) {
    snowflakes.add(new Bigsnow());
    snowflakes.add(new Smallsnow());
  }
}

void draw() {
  background(0);
  translate(width/2, height/2);
  rotateX(rotX);
  rotateY(rotY);
  push();
  rotateX(PI/2);
  fill(250);
  rect(-300, -300, 600, 600);
  pop();
  noStroke();
  
  for(Snow s : snowflakes) {
    s.update();
    s.show();
  }
}

void mouseDragged(){
  rotY += (mouseX - pmouseX) * 0.01;
  rotX -= (mouseY - pmouseY) * 0.01;
}
