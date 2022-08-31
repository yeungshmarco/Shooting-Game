PImage sniperGun;
float sniperGunX, sniperGunY, sniperGunWidth, sniperGunHeight;
//
void movingGunImage() {
  fill(white);
  noStroke();
  rect(sniperGunX, sniperGunY, sniperGunWidth, sniperGunHeight);
  sniperGun = loadImage("snipergun.png"); //899 x 536
  sniperGunX = mouseX+width*1/15;
  sniperGunY = height*2/3;
  sniperGunWidth = sniperGunHeight*2;
  sniperGunHeight = height*1/3;
  image(sniperGun, sniperGunX, sniperGunY, sniperGunWidth, sniperGunHeight);
}
