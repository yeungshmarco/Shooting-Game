PImage loadingScreen1, defeatLoadingScreen, loadingScreen3, victoryLoadingScreen;
float randomLoadingScreen = random(1, 4);
//
void loadingScreen() {
  println(randomLoadingScreen);
  loadingScreen1 = loadImage("loadingScreen1.jpeg");
  defeatLoadingScreen = loadImage("loadingScreen2.jpeg");
  loadingScreen3 = loadImage("loadingScreen3.jpeg");
  rotate(radians(20));
  if (randomLoadingScreen>=1 && randomLoadingScreen<=2) {
    image(loadingScreen1, 0, 0, width, height);
  } else if (randomLoadingScreen>=2 && randomLoadingScreen<=3) {
    image(defeatLoadingScreen, 0, 0, width, height);
  } else {
    image(loadingScreen3, 0, 0, width, height);
  }
}
/*
void showLoadingScreen() {
  if (showLoadingScreen==true) {
    delay(0);
    loadingScreen();
  }
}
*/
