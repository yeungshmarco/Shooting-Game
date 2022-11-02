PFont TimesNewRomanPSBoldMT;
PImage sniperGun, gamingScreenShootingRange1, gamingScreenShootingBench, bulletHole;
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
  textAlign(CENTER,CENTER);
  fill(white);
  textFont(TimesNewRomanPSBoldMT, 40);
  stroke(3);
  text("Score:", width*1100/1440, height*45/900);
  text(score, width*1200/1440, height*48/900);
}
//
void movingGunImage() {
  sniperGun = loadImage("snipergun.png"); //899 x 536
  sniperGunX = mouseX+width*1/15;
  sniperGunY = height*2/3;
  sniperGunWidth = sniperGunHeight*2;
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
void bulletHole() {
    bulletHoleX = mouseX;
    bulletHoleY = mouseY;
    bulletHoleWidth = width*1/30;
    bulletHoleHeight = width*1/30;
    imageMode(CENTER);
    bulletHole = loadImage("bulletHole.png");
    image(bulletHole, bulletHoleX, bulletHoleY, bulletHoleWidth, bulletHoleHeight);
    imageMode(CORNER);
}
