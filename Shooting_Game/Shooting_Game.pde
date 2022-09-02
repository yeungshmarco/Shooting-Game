import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
Minim minim;
//
Boolean gameStart=false, gameMenu=true;
//
void setup() {
  fullScreen();
  println(width, "x", height);
  String ls="Landscape or Square", p="Portrait", DO="Display Orientation:", instruct="Please tilt your device";
  String orientation = (width >= height) ? ls : p;
  println( DO, orientation );
  if ( orientation==ls ) { //Test for chosen display orientation
    println("Display Orientation is good to go");
  } else {
    println(instruct);
  }
  //Minim
  minim = new Minim(this);
  audioSetup();
  noLoop();
}
//END setup
void draw() {
  if (gameMenu==true) {
    cursor(ARROW);
    startGameScreen();
  }
  if (gameStart==true) {
    gameMenu=false;
    cursor(CROSS);
    gamingScreen();
    movingGunImage();
  }
}
//END draw
void keyPressed() {
  startGameKeyPressed();
}
//END keyPressed
void mousePressed() {
}
//END mousePressed
