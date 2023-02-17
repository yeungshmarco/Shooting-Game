PImage homeScreenBackground, startGameGun1, playTextImage, quitTextHSImage;
Boolean showLoadingScreen=false;

void homeScreen() {
  noTint();
  homeScreenBackground = loadImage("shootingrange.jpeg"); //800 x 532
  startGameGun1 = loadImage("snipergunidle.png"); //1958 x 633
  image(homeScreenBackground, 0, 0, width, height);
  float startGameGun1Angle = radians(340);
  rotate(startGameGun1Angle);
  image(startGameGun1, 0, height*4/5, width*1/6, height*1/10);
  rotate(radians(380));
  fill(black);
  stroke(white);
  rect(width*4/10, height*27/40, width*2/10, height*4/20, 15);
  //rect(width*9/20, height*28/40, width*1/10, height*2/40);
  //rect(width*9/20, height*32/40, width*1/10, height*2/40);
  playButton();
  quitButtonHS();
}
//
void startGameKeyPressed() {
  if (inHomeScreen==true && key=='P' || key=='p') {
    gameStart=true;
  }
}
//
void playButton() {
  playTextImage = loadImage("playtext-removebg-preview.png");
  if (mouseX>width*9/20 && mouseX<width*11/20 && mouseY>height*28/40 && mouseY<height*30/40) {
    tint(170, 55, 216);
  } else {
    noTint();
  }
  image(playTextImage, width*4/10, height*26/40, width*2/10, height*6/40);
}
//
void quitButtonHS() {
  quitTextHSImage = loadImage("Exit-removebg-preview.png");
  if (mouseX>width*9/20 && mouseX<width*11/20 && mouseY>height*32/40 && mouseY<height*34/40) {
    tint(216, 55, 110);
  } else {
    noTint();
  }
  image(quitTextHSImage, width*4/10, height*30/40, width*2/10, height*6/40);
}
//
void playButtonMousePressed() {
  if (inHomeScreen==true && mouseButton==LEFT && mouseX>width*9/20 && mouseX<width*11/20 && mouseY>height*28/40 && mouseY<height*30/40) {
    gameStart=true;
  }
}
//
void quitButtonHSMousePressed() {
  if (inHomeScreen==true && mouseButton==LEFT && mouseX>width*9/20 && mouseX<width*11/20 && mouseY>height*32/40 && mouseY<height*34/40) {
    exit();
  }
}
/*
void recentScore() {
  if (resetButtonPressed==true && inHomeScreen==true) {
    fill(black, 190);
    rect(width*850/1400, height*25/900, width*500/1400, height*50/900, 10);
    textAlign(CENTER, CENTER);
    fill(white);
    textFont(TimesNewRomanPSBoldMT, 40);
    stroke(3);
    text("Recent Score: ", width*14/20, height*1/20);
    textAlign(LEFT, CENTER);
    text(score, width*1170/1440, height*47/900);
  }
}
*/
