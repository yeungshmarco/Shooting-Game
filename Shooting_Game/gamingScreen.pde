PFont TimesNewRomanPSBoldMT;
PImage sniperGun, gamingScreenShootingRange1, gamingScreenShootingBench, bulletHole, settingsButton, quitButton;
float sniperGunX, sniperGunY, sniperGunWidth, sniperGunHeight;
float bulletHoleX, bulletHoleY, bulletHoleWidth, bulletHoleHeight;
int score=0;
Boolean ifGunFiredMousePressed=false;
//
void gamingScreen() {
  TimesNewRomanPSBoldMT = createFont("TimesNewRomanPS-BoldMT", 601);
  rotate(radians(360));
  gamingScreenShootingBench = loadImage("gamingScreenShootingBench.jpeg"); //800 x 480
  image(gamingScreenShootingBench, 0, height*1/3, width, height*2/3);
  gamingScreenShootingRange1 = loadImage("gamingScreenShootingRange1.jpeg"); //540 x 360
  image(gamingScreenShootingRange1, 0, 0, width, height*77/100);
  fill(black, 190);
  rect(width*1000/1400, height*25/900, width*200/1400, height*50/900, 10);
  textAlign(CENTER, CENTER);
  fill(white);
  textFont(TimesNewRomanPSBoldMT, 40);
  stroke(3);
  text("Score:", width*1100/1440, height*45/900);
  textAlign(LEFT, CENTER);
  text(score, width*1170/1440, height*47/900);
  targets();
  movingGunImage();
  targetPythagorasTheorem();
  targetHitText();
  settingsButton();
}
//
void movingGunImage() {
  sniperGun = loadImage("snipergun.png"); //899 x 536
  sniperGunX = mouseX+width*1/15;
  sniperGunY = height*2/3;
  sniperGunWidth = sniperGunHeight*1.8;
  sniperGunHeight = height*1/3;
  image(sniperGun, sniperGunX, sniperGunY, sniperGunWidth, sniperGunHeight);
}
//
void firedAmmoMousePressed() {
  if (gameStart==true) {
    if (mouseButton==LEFT) {
      bulletHole();
      gunshotSoundEffect.rewind();
      gunshotSoundEffect.play();
    } else {
      gamingScreen();
      gunshotSoundEffect.pause();
    }
  }
}
//
void bulletHole() {//set mousepressed
  bulletHoleX = mouseX;
  bulletHoleY = mouseY;
  bulletHoleWidth = width*1/30;
  bulletHoleHeight = width*1/30;
  imageMode(CENTER);
  bulletHole = loadImage("bulletHole.png");
  image(bulletHole, bulletHoleX, bulletHoleY, bulletHoleWidth, bulletHoleHeight);
  imageMode(CORNER);
}
//
void settingsButton() {
  //return to home screen/quit
  fill(white);
  rect(width*19/20, 0, width*1/20, width*1/20, 16);
  settingsButton = loadImage("84059.png");
  image(settingsButton, width*19/20, 0, width*1/20, width*1/20);
}
//
void quitButton() {
  fill(white, 190);
  rect(0, 0, width*1/19, width*1/19, 10);
  quitButton = loadImage("quitButton.png");
  image(quitButton, 0, 0, width*1/20, width*1/20);
}
//
void quitButtonMousePressed() {
  if (mouseButton==LEFT && mouseX>0 && mouseX<width*1/20 && mouseY>0 && mouseY<width*1/20) {
    exit();
  }
}
