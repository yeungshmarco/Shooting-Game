PFont AppleSDGothicNeoHeavy48;
float targetX, targetY;
float target1, target2, target3, target4, target5, target6, target7, target8, target9, target10;
float xLength, yLength;
Boolean onTarget1=false, onTarget2=false, onTarget3=false, onTarget4=false, onTarget5=false, onTarget6=false, onTarget7=false, onTarget8=false, onTarget9=false, onTarget10=false;
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
void targetPythagorasTheorem() {
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
    onTarget1=true;
  } else {
    onTarget1=false;
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
    onTarget2=true;
  } else {
    onTarget2=false;
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
    onTarget3=true;
  } else {
    onTarget3=false;
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
    onTarget4=true;
  } else {
    onTarget4=false;
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
    onTarget5=true;
  } else {
    onTarget5=false;
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
    onTarget6=true;
  } else {
    onTarget6=false;
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
    onTarget7=true;
  } else {
    onTarget7=false;
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
    onTarget8=true;
  } else {
    onTarget8=false;
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
    onTarget9=true;
  } else {
    onTarget9=false;
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
    onTarget10=true;
  } else {
    onTarget10=false;
  }
}
//
void targetHitText() {
  AppleSDGothicNeoHeavy48 = createFont("AppleSDGothicNeo-Heavy-48", 50);
}
//
void targetHitScore() {
  if (mouseButton==LEFT && onTarget1==true) {
    score+=1;
    if (onTarget2==false && onTarget3==false && onTarget4==false && onTarget5==false && onTarget6==false && onTarget7==false && onTarget8==false && onTarget9==false && onTarget10==false) {
      textFont(AppleSDGothicNeoHeavy48);
      fill(red);
      text("+1", targetX+width*1/6, targetY-height*1/10);
      hitTarget1=true;
    }
  }
  if (mouseButton==LEFT && onTarget2==true) {
    score+=1;
    if (onTarget3==false && onTarget4==false && onTarget5==false && onTarget6==false && onTarget7==false && onTarget8==false && onTarget9==false && onTarget10==false) {
      textFont(AppleSDGothicNeoHeavy48);
      fill(red);
      text("+2", targetX+width*1/6, targetY-height*1/10);
      hitTarget2=true;
    }
  }
  if (mouseButton==LEFT && onTarget3==true) {
    score+=1;
    if (onTarget4==false && onTarget5==false && onTarget6==false && onTarget7==false && onTarget8==false && onTarget9==false && onTarget10==false) {
      textFont(AppleSDGothicNeoHeavy48);
      fill(red);
      text("+3", targetX+width*1/6, targetY-height*1/10);
      hitTarget3=true;
    }
  }
  if (mouseButton==LEFT && onTarget4==true) {
    score+=1;
    if (onTarget5==false && onTarget6==false && onTarget7==false && onTarget8==false && onTarget9==false && onTarget10==false) {
      textFont(AppleSDGothicNeoHeavy48);
      fill(red);
      text("+4", targetX+width*1/6, targetY-height*1/10);
      hitTarget4=true;
    }
  }
  if (mouseButton==LEFT && onTarget5==true) {
    score+=1;
    if (onTarget6==false && onTarget7==false && onTarget8==false && onTarget9==false && onTarget10==false) {
      textFont(AppleSDGothicNeoHeavy48);
      fill(red);
      text("+5", targetX+width*1/6, targetY-height*1/10);
      hitTarget5=true;
    }
  }
  if (mouseButton==LEFT && onTarget6==true) {
    score+=1;
    if (onTarget7==false && onTarget8==false && onTarget9==false && onTarget10==false) {
      textFont(AppleSDGothicNeoHeavy48);
      fill(red);
      text("+6", targetX+width*1/6, targetY-height*1/10);
      hitTarget6=true;
    }
  }
  if (mouseButton==LEFT && onTarget7==true) {
    score+=1;
    if (onTarget8==false && onTarget9==false && onTarget10==false) {
      textFont(AppleSDGothicNeoHeavy48);
      fill(red);
      text("+7", targetX+width*1/6, targetY-height*1/10);
      hitTarget7=true;
    }
  }
  if (mouseButton==LEFT && onTarget8==true) {
    score+=1;
    if (onTarget9==false && onTarget10==false) {
      textFont(AppleSDGothicNeoHeavy48);
      fill(red);
      text("+8", targetX+width*1/6, targetY-height*1/10);
      hitTarget8=true;
    }
  }
  if (mouseButton==LEFT && onTarget9==true) {
    score+=1;
    if (onTarget10==false) {
      textFont(AppleSDGothicNeoHeavy48);
      fill(red);
      text("+9", targetX+width*1/6, targetY-height*1/10);
      hitTarget9=true;
    }
  }
  if (mouseButton==LEFT && onTarget10==true) {
    score+=1;
    textFont(AppleSDGothicNeoHeavy48);
    fill(red);
    text("+10", targetX+width*1/6, targetY-height*1/10);
    hitTarget10=true;
  }
}
