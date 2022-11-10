PImage homeScreenBackground, startGameGun1;
Boolean showLoadingScreen=false;

void homeScreen() {
  homeScreenBackground = loadImage("shootingrange.jpeg"); //800 x 532
  startGameGun1 = loadImage("snipergunidle.png"); //1958 x 633
  image(homeScreenBackground, 0, 0, width, height);
  float startGameGun1Angle = radians(340);
  rotate(startGameGun1Angle);
  image(startGameGun1, 0, height*4/5, width*1/6, height*1/10);
  rotate(radians(380));
}
//
void startGameKeyPressed() {
  if (inHomeScreen==true && key=='P' || key=='p') {
    gameStart=true;
  }
}