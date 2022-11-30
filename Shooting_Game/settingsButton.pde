Boolean settingsScreen=false;

void settingsButtonMousePressed() {
  if (gameStart==true && mouseX>width*19/20 && mouseX<width && mouseY>0 && mouseY<width*1/20) {
    if (mouseButton==LEFT) {
      settingsScreen=true;
    } else if (settingsScreen==true) {
      settingsScreen=false;
    } else {
      settingsScreen=true;
    }
  }
}
//
void settingsScreen() {
  if (settingsScreen=true) {
    fill(white, 190);
    rect(width*5/20, height*3/10, width*10/20, height*4/10);
  } else {
    gamingScreen();
  }
}
//
void gameStartSettings() {
  if (settingsScreen=true) {
    gameStart=false;
  } else {
    gameStart=true;
  }
}
