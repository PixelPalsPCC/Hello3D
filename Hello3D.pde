//This program draws hello in 3d by converting the font to points and 
//and drawing them onto a 2D object that can be used in a 3D surface

PGraphics pg;
PFont font;
int x;
int y;
int f = 5; // factor
//
void setup() {
  // size
  size(600, 600, P3D);
  // The font
  font = createFont("FFScala-32.vlw", 32);
  textFont(font, 32);
  // Inits
  background(0);
  fill(255, 2, 2);
  stroke(255, 2, 2); 
  // prepare pg now
  pg = createGraphics(180, 180, P3D);
  makeText();
} // func
//
void draw() {
  if (keyPressed) {
    image(pg, 0, 0);
  } // if
  //rect(30-10, 60, 10+textWidth("Hallo!"), 40);
  x = int(random (10, 30+textWidth("Hallo!") ));
  y = int(random (40, 106 ));
  // println(x + " " + y);
  if (pg.get(x, y)!=color(0)) {
    point(x, y);
    ellipse(x*f, y*f, f, f);
  } // if
} // func
//
//
void makeText() {
  pg.beginDraw();
  pg.background(0);
  pg.textFont(font, 32);
  pg.textMode(SCREEN);
  pg.stroke(255);
  // pg.line(40, 40, mouseX, mouseY);
  pg.text("Hallo!", 30, 90);
  pg.endDraw();
} // func
// ----------------------------------------------
