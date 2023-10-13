PImage img;

void setup() {
  size(438, 640);
  img = loadImage("leon.jpg");
  img.resize(width, height);
}

void draw() {
  background(50); 

  float tilesX = mouseX/5;
  float tilesY = tilesX;
  float tileW = width/tilesX;
  float tileH = height/tilesY; 

  noStroke();
  ellipseMode(CORNER);
  
  for (int x = 0; x < tilesX; x++) {
    for (int y = 0; y < tilesY; y++) {

      int pX = int(x*tileW);
      int pY = int(y*tileH);

      color c = img.get(pX, pY);
      float b = brightness(c);

      float s = map(b, 0, 255, 0, 1);

      fill(#f1f1f1);

      ellipse(x*tileW, y*tileH, tileW*s, tileH*s);
    }
  }
}
