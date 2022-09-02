PImage sniperGun, gamingScreenShootingRange1, gamingScreenShootingBench, bulletHole;
float sniperGunX, sniperGunY, sniperGunWidth, sniperGunHeight;
float bulletHoleX, bulletHoleY, bulletHoleWidth, bulletHoleHeight;
Boolean ifGunFiredMousePressed=false;
//
void gamingScreen() {
  rotate(radians(360));
  gamingScreenShootingBench = loadImage("gamingScreenShootingBench.jpeg"); //800 x 480
  image(gamingScreenShootingBench, 0, height*1/3, width, height*2/3);
  gamingScreenShootingRange1 = loadImage("gamingScreenShootingRange1.jpeg"); //540 x 360
  image(gamingScreenShootingRange1, 0, 0, width, height*77/100);
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
  ifGunFiredMousePressed=true;
}
//
void bulletHole() {
  if (ifGunFiredMousePressed=true) {
    if (gameStart==true) {
      bulletHoleX = mouseX;
      bulletHoleY = mouseY;
      bulletHoleWidth = width*1/30;
      bulletHoleHeight = width*1/30;
      imageMode(CENTER);
      bulletHole = loadImage("bulletHole.png");
      image(bulletHole, bulletHoleX, bulletHoleY, bulletHoleWidth, bulletHoleHeight);
      imageMode(CORNER);
      loop();
    }
  }
}
