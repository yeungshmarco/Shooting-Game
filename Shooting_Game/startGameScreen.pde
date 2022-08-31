PImage startGameShootingGround, startGameGun;

void startGameScreen() {
  startGameShootingGround = loadImage("shootingrange.jpeg"); //800 x 532
  startGameGun = loadImage("snipergunidle.png"); //1958 x 633
  image(startGameShootingGround, 0, 0, width, height);
  float angle = radians(340);
  rotate(angle);
  image(startGameGun, 0, height*4/5, width*1/6, height*1/10);
}
