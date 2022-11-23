PImage homeScreenBackground, startGameGun1, playTextImage;
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
//
void playButton() {
  fill(black);
  stroke(white);
  rect(width*7/10, height*9/20, width*2/10, height*2/20);
  playTextImage = loadImage("playtext-removebg-preview.png");
  image(playTextImage, width*7/10, height*17/40, width*2/10, height*6/40);
}
//
void playButtonMousePressed() {
  if(inHomeScreen==true && mouseX>width*7/10 && mouseX<width*9/10 && mouseY>height*17/40 && mouseY<height*23/40) {
    gameStart=true;
  }
}
