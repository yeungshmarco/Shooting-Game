PImage loadingScreen1, loadingScreen2, loadingScreen3, victoryLoadingScreen;
float randomLoadingScreen = random(1,4);
//
void loadingScreen() {
  loadingScreen1 = loadImage("loadingScreen1.jpeg");
  loadingScreen2 = loadImage("loadingScreen2.jpeg");
  loadingScreen3 = loadImage("loadingScreen3.jpeg");
  if (randomLoadingScreen>=1 && randomLoadingScreen<=2) {
    image(loadingScreen1, 0, 0, width, height);
  } else if (randomLoadingScreen>=2 && randomLoadingScreen<=3) {
    image(loadingScreen2, 0, 0, width, height);
  } else {
    image(loadingScreen3, 0, 0, width, height);
  }
}
