int maxNumber = 9;
int scale = 100;
int gridSize = 360; // 320
float rotateDegrees = 40;
void setup() {
  background(0);
  stroke(255);
  strokeWeight(8);
  size(10000, 10000);
  noFill();
  smooth();
  noLoop();
}


void draw() {

  
  for (int x = gridSize; x < width - 100 ; x = x + gridSize) {
    for (int y = gridSize; y < height - 100 ; y = y + gridSize) {
      push();
        
      nowaki(x, y);
      pop();
    }
  }

  save("japanese_001.png");
  println("saved");
  exit();
}

void nowaki(int xOffset, int yOffset) {

  println("xOffset = " + xOffset);
  translate(xOffset, yOffset);

  for (int x = 0; x < maxNumber; x++) {
    arc(100, 0, scale, scale, radians(0), radians(203));
    rotate(radians(rotateDegrees));
  }
}
