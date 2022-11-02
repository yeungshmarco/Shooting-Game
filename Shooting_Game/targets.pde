float targetX, targetY;
float target1, target2, target3, target4, target5, target6, target7, target8, target9, target10;
float xLength, yLength;
Boolean hitTarget1=false, hitTarget2=false, hitTarget3=false, hitTarget4=false, hitTarget5=false, hitTarget6=false, hitTarget7=false, hitTarget8=false, hitTarget9=false, hitTarget10=false;

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
  targetY = random(height*1/5, height*2/3);
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
  if (sqrt(sq(xLength)+sq(yLength)) < 200) {
    hitTarget1=true;
  } else {
    hitTarget1=false;
  }

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
  if (sqrt(sq(xLength)+sq(yLength)) < 180) {
    hitTarget2=true;
  } else {
    hitTarget2=false;
  }

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
  if (sqrt(sq(xLength)+sq(yLength)) < 160) {
    hitTarget3=true;
  } else {
    hitTarget3=false;
  }

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
  if (sqrt(sq(xLength)+sq(yLength)) < 140) {
    hitTarget4=true;
  } else {
    hitTarget4=false;
  }

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
  if (sqrt(sq(xLength)+sq(yLength)) < 120) {
    hitTarget5=true;
  } else {
    hitTarget5=false;
  }

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
  if (sqrt(sq(xLength)+sq(yLength)) < 100) {
    hitTarget6=true;
  } else {
    hitTarget6=false;
  }

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
  if (sqrt(sq(xLength)+sq(yLength)) < 80) {
    hitTarget7=true;
  } else {
    hitTarget7=false;
  }

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
  if (sqrt(sq(xLength)+sq(yLength)) < 60) {
    hitTarget8=true;
  } else {
    hitTarget8=false;
  }

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
  if (sqrt(sq(xLength)+sq(yLength)) < 40) {
    hitTarget9=true;
  } else {
    hitTarget9=false;
  }

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
  if (sqrt(sq(xLength)+sq(yLength)) < 20) {
    hitTarget10=true;
  } else {
    hitTarget10=false;
  }
}
//
void ifTargetHit() {
  if (mouseButton==LEFT && hitTarget1==true) {
    score+=1;
  }
  if (mouseButton==LEFT && hitTarget2==true) {
    score+=2;
  }
  if (mouseButton==LEFT && hitTarget3==true) {
    score+=3;
  }
  if (mouseButton==LEFT && hitTarget4==true) {
    score+=4;
  }
  if (mouseButton==LEFT && hitTarget5==true) {
    score+=5;
  }
  if (mouseButton==LEFT && hitTarget6==true) {
    score+=6;
  }
  if (mouseButton==LEFT && hitTarget7==true) {
    score+=7;
  }
  if (mouseButton==LEFT && hitTarget8==true) {
    score+=8;
  }
  if (mouseButton==LEFT && hitTarget9==true) {
    score+=9;
  }
  if (mouseButton==LEFT && hitTarget10==true) {
    score+=10;
  }
}
