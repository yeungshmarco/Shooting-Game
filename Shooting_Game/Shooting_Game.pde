Boolean gameStart=false;
//
void setup() {
  fullScreen();
  background(white);
  println(width, "x", height);
  String ls="Landscape or Square", p="Portrait", DO="Display Orientation:", instruct="Please tilt your device";
  String orientation = (width >= height) ? ls : p;
  println( DO, orientation );
  if ( orientation==ls ) { //Test for chosen display orientation
    println("Display Orientation is good to go");
  } else {
    println(instruct);
  }
}
//END setup
void draw() {
  if (gameStart==true) {
    movingGunImage();
  }
}
//END draw
void keyPressed() {
}
//END keyPressed
void mousePressed() {
}
//END mousePressed
