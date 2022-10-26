float targetX, targetY;
float target1, target2, target3, target4, target5, target6, target7, target8, target9, target10;
float xLength, yLength;
Boolean hitTarget=false;

void targetVariables() {
  target1 = width*200/1440;
  target2 = width*180/1440;
  target3 = width*160/1440;
  target4 = width*140/1440;
  target5 = width*120/1440;
  target6 = width*100/1440;
  target7 = width*80/1440;
  target8 = width*60/1440;
  target9 = width*40/1440;
  target10 = width*20/1440;
}
//
void targets() {
  targetX = random(width);
  targetY = random(height/2);
  fill(white);
  ellipse(targetX, targetY, target1, target1);
  ellipse(targetX, targetY, target2, target2);
  fill(black);
  ellipse(targetX, targetY, target3, target3);
  ellipse(targetX, targetY, target4, target4);
  fill(blue);
  ellipse(targetX, targetY, target5, target5);
  ellipse(targetX, targetY, target6, target6);
  fill(red);
  ellipse(targetX, targetY, target7, target7);
  ellipse(targetX, targetY, target8, target8);
  fill(yellow);
  ellipse(targetX, targetY, target9, target9);
  ellipse(targetX, targetY, target10, target10);
}
//
void hitTarget() {
  if (mouseX > targetX) {
    xLength = mouseX - targetX;
  } else {
    xLength = targetX - mouseX;
  }
  if (mouseY > targetY) {
    yLength = mouseY - targetY;
  } else {
    yLength = targetY - mouseY;
  }
  if (sqrt(sq(xLength)+sq(yLength)) < target1/2) {
    hitTarget=true;
  } else {
    hitTarget=false;
  }
}
//
void ifTargetHit() {
  if (mouseButton==LEFT && hitTarget==true) {
      gamingScreen();
      targets();
  }
}
