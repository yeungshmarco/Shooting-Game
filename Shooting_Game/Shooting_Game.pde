import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
Minim minim;
//
Boolean gameStart=false, inHomeScreen=true;
//
void setup() {
  frameRate(10);
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
  targetVariables();
}
//END setup
void draw() {
  String[] fontList = PFont.list();
  printArray(fontList);
  if (inHomeScreen==true) {
    cursor(ARROW);
    homeScreen();
  }
  /*if (showLoadingScreen==true) {
    showLoadingScreen();
  }*/
  //gameStartSettings();
  if (settingsScreen==true) {
    settingsScreen();
  }
  //
  if (gameStart==true) {
    inHomeScreen=false;
    //showLoadingScreen=false;
    cursor(CROSS);
    gamingScreen();
  }
}
//END draw
void keyPressed() {
  startGameKeyPressed();
}
//END keyPressed
void mousePressed() {
  firedAmmoMousePressed();
  targetHitScore();
  playButtonMousePressed();
  quitButtonHSMousePressed();
  //settingsButtonMousePressed();
  quitButtonMousePressed();
  returnHomeMousePressed();
  resetButtonMousePressed();
}
//END mousePressed
