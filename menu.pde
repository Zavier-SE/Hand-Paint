PImage SEB_A;
PImage SEB_B;
PImage SEB_C;
PImage SEB_D;
PImage SEB_E;
PImage SEB_F;
PImage MBNS;
PImage MBTS;
PImage MBFS;
color menuText = color(102,102,153);
int moveDist = width*2;

void menuSetUp(){
  //==========BUTTON IMAGE SETTING==========
  SEB_A = loadImage("a.png");
  SEB_A.resize(width/10,width/20);
  SEB_B = loadImage("b.png");
  SEB_B.resize(width/10,width/20);
  SEB_C = loadImage("c.png");
  SEB_C.resize(width/10,width/20);
  SEB_D = loadImage("d.png");
  SEB_D.resize(width/10,width/20);
  SEB_E = loadImage("e.png");
  SEB_E.resize(width/10,width/20);
  SEB_F = loadImage("f.png");
  SEB_F.resize(width/10,width/20);
  MBNS = loadImage("ns.png");
  MBNS.resize(width/10,width/20);
  MBTS = loadImage("2s.png");
  MBTS.resize(width/10,width/20);
  MBFS = loadImage("4s.png");
  MBFS.resize(width/10,width/20);
  
  //=========MENU LAYOUT==========
  menu.beginDraw();
  menu.background(204,230,255);
  //=============================Section 1=====================================
  menu.textSize(30);
  menu.fill(menuText);
  menu.text("Basic Bursh", moveDist + width/50,height/30);
  menu.tint(179, 255, 102, 70);
  menu.image(SEB_A, moveDist + width/30,height/25);
  menu.textSize(20);
  menu.text("Pick A Colour:", moveDist + width/50,height/7);
  menu.noStroke();
  menu.fill(brushC);
  menu.ellipse(moveDist + width/30 + width/20, height/25 + width/40, 50, 50);
  //Color 1
  menu.fill(255);
  menu.rect( moveDist + width/30,height/6,width/25,width/25);
  //Color 2
  menu.fill(51, 204, 51);
  menu.rect( moveDist + width/30 + width/25 + width/50,height/6,width/25,width/25);
  //Color 3
  menu.fill(255, 153, 51);
  menu.rect( moveDist + width/30 + (width/25 + width/50) * 2,height/6,width/25,width/25);
  //Color 4
  menu.fill(204, 0, 255);
  menu.rect( moveDist + width/30 + (width/25 + width/50) * 3,height/6,width/25,width/25);
  //Color 5
  menu.fill(0, 204, 255);
  menu.rect( moveDist + width/30 + (width/25 + width/50) * 4,height/6,width/25,width/25);
  menu.stroke(255);
  menu.strokeWeight(7);
  menu.line(0,height/4,width,height/4);
  //=============================Section 2=====================================
  menu.textSize(30);
  menu.fill(menuText);
  menu.text("Painting Modes", moveDist + width/50,height/4 + height/20);
  menu.tint(179, 255, 102, 70);
  menu.image(MBNS, moveDist + width/30, height/4 + height/15);
  menu.textSize(13);
  menu.text("No Rational Symmetry", moveDist + width/28,height/4 + height/6);
  menu.noTint();
  menu.image(MBTS, moveDist + width/5, height/4 + height/15);
  menu.text("2-fold Rational Symmetry", moveDist + width/5,height/4 + height/6);
  menu.image(MBFS, moveDist + width/30, height/2 - height/20);
  menu.text("4-fold Rational Symmetry", moveDist + width/33,height/2 + height/20);
  menu.stroke(255);
  menu.strokeWeight(7);
  menu.line(0, height * 3 / 5,width,height * 3 / 5);
  //=============================Section 3=====================================
  menu.textSize(30);
  menu.fill(menuText);
  menu.text("Special Brushes", moveDist + width/50,height * 3 / 5 + height/20);
  menu.noTint();
  menu.image(SEB_B, moveDist + width/30, height * 3 / 5 + height/15);
  menu.image(SEB_C, moveDist + width/5, height * 3 / 5 +  height/15);
  menu.image(SEB_D, moveDist + width/30, height * 3 / 5 + height/6);
  menu.image(SEB_E, moveDist + width/5,  height * 3 / 5 + height/6);
  menu.image(SEB_F, moveDist + width/5, height * 3 / 5 + height/3.7);
  menu.endDraw();
}

void updateBrushColor(){
  if (menuOpen == true && cursorId == -1){
    if(overRect( moveDist + width/30,height/6,width/25,width/25)){
      brushC = color(255);
    } else if(overRect( moveDist + width/30 + width/25 + width/50,height/6,width/25,width/25)){
      brushC = color(51, 204, 51);
    } else if(overRect( moveDist + width/30 + (width/25 + width/50) * 2,height/6,width/25,width/25)){
      brushC = color(255, 153, 51);
    } else if(overRect( moveDist + width/30 + (width/25 + width/50) * 3,height/6,width/25,width/25)){
      brushC = color(204, 0, 255);
    } else if(overRect( moveDist + width/30 + (width/25 + width/50) * 4,height/6,width/25,width/25)){
      brushC = color(0, 204, 255);
    }
  }
}

void updateMenu(){
  updateSEB_A();
  updateMode();
  updateBrush();
}

void updateMode(){
  if (menuOpen == true && cursorId == -1){
    if(overRect( moveDist + width/30, height/4 + height/15,width/10,width/20)){
      mode = 1;
      menu.beginDraw();
      menu.tint(179, 255, 102, 70);
      menu.image(MBNS, moveDist + width/30, height/4 + height/15);
      menu.noTint();
      menu.image(MBTS, moveDist + width/5, height/4 + height/15);
      menu.image(MBFS, moveDist + width/30, height/2 - height/20);
      menu.endDraw();
    }else if(overRect( moveDist + width/5, height/4 + height/15,width/10,width/20)){
      mode = 2;
      menu.beginDraw();
      menu.tint(179, 255, 102, 70);
      menu.image(MBTS, moveDist + width/5, height/4 + height/15);
      menu.noTint();
      menu.image(MBNS, moveDist + width/30, height/4 + height/15);
      menu.image(MBFS, moveDist + width/30, height/2 - height/20);
      menu.endDraw();
    }else if(overRect( moveDist + width/30, height/2 - height/20,width/10,width/20)){
      mode = 4;
      menu.beginDraw();
      menu.tint(179, 255, 102, 70);
      menu.image(MBFS, moveDist + width/30, height/2 - height/20);
      menu.noTint();
      menu.image(MBNS, moveDist + width/30, height/4 + height/15);
      menu.image(MBTS, moveDist + width/5, height/4 + height/15);
      menu.endDraw();
    }
  }
}

void updateBrush(){
  if (menuOpen == true && cursorId == -1){
    if(overRect( moveDist + width/30,height/25,width/10,width/20)){
      brush = 'a';
      menu.beginDraw();
      menu.tint(179, 255, 102, 70);
      menu.image(SEB_A, moveDist + width/30,height/25);
      menu.noTint();
      menu.image(SEB_B, moveDist + width/30, height * 3 / 5 + height/15);
      menu.image(SEB_C, moveDist + width/5, height * 3 / 5 +  height/15);
      menu.image(SEB_D, moveDist + width/30, height * 3 / 5 + height/6);
      menu.image(SEB_E, moveDist + width/5,  height * 3 / 5 + height/6);
      menu.image(SEB_F, moveDist + width/5, height * 3 / 5 + height/3.7);
      menu.endDraw();
    } else if(overRect( moveDist + width/30, height * 3 / 5 + height/15,width/10,width/20)){
      brush = 'b';
      menu.beginDraw();
      menu.tint(179, 255, 102, 70);
      menu.image(SEB_B, moveDist + width/30, height * 3 / 5 + height/15);
      menu.noTint();
      menu.image(SEB_A, moveDist + width/30,height/25);
      menu.image(SEB_C, moveDist + width/5, height * 3 / 5 +  height/15);
      menu.image(SEB_D, moveDist + width/30, height * 3 / 5 + height/6);
      menu.image(SEB_E, moveDist + width/5,  height * 3 / 5 + height/6);
      menu.image(SEB_F, moveDist + width/5, height * 3 / 5 + height/3.7);
      menu.endDraw();
    } else if(overRect( moveDist + width/5, height * 3 / 5 +  height/15,width/10,width/20)){
      brush = 'c';
      menu.beginDraw();
      menu.tint(179, 255, 102, 70);
      menu.image(SEB_C, moveDist + width/5, height * 3 / 5 +  height/15);
      menu.noTint();
      menu.image(SEB_A, moveDist + width/30,height/25);
      menu.image(SEB_B, moveDist + width/30, height * 3 / 5 + height/15);
      menu.image(SEB_D, moveDist + width/30, height * 3 / 5 + height/6);
      menu.image(SEB_E, moveDist + width/5,  height * 3 / 5 + height/6);
      menu.image(SEB_F, moveDist + width/5, height * 3 / 5 + height/3.7);
      menu.endDraw();
    } else if(overRect( moveDist + width/30, height * 3 / 5 + height/6,width/10,width/20)){
      brush = 'd';
      menu.beginDraw();
      menu.tint(179, 255, 102, 70);
      menu.image(SEB_D, moveDist + width/30, height * 3 / 5 + height/6);
      menu.noTint();
      menu.image(SEB_A, moveDist + width/30,height/25);
      menu.image(SEB_B, moveDist + width/30, height * 3 / 5 + height/15);
      menu.image(SEB_C, moveDist + width/5, height * 3 / 5 +  height/15);
      menu.image(SEB_E, moveDist + width/5,  height * 3 / 5 + height/6);
      menu.image(SEB_F, moveDist + width/5, height * 3 / 5 + height/3.7);
      menu.endDraw();
    } else if(overRect( moveDist + width/5,  height * 3 / 5 + height/6,width/10,width/20)){
      brush = 'e';
      menu.beginDraw();
      menu.tint(179, 255, 102, 70);
      menu.image(SEB_E, moveDist + width/5,  height * 3 / 5 + height/6);
      menu.noTint();
      menu.image(SEB_A, moveDist + width/30,height/25);
      menu.image(SEB_B, moveDist + width/30, height * 3 / 5 + height/15);
      menu.image(SEB_C, moveDist + width/5, height * 3 / 5 +  height/15);
      menu.image(SEB_D, moveDist + width/30, height * 3 / 5 + height/6);
      menu.image(SEB_F, moveDist + width/5, height * 3 / 5 + height/3.7);
      menu.endDraw();
    } else if(overRect( moveDist + width/5, height * 3 / 5 + height/3.7,width/10,width/20)){
      brush = 'f';
      menu.beginDraw();
      menu.tint(179, 255, 102, 70);
      menu.image(SEB_F, moveDist + width/5, height * 3 / 5 + height/3.7);
      menu.noTint();
      menu.image(SEB_A, moveDist + width/30,height/25);
      menu.image(SEB_B, moveDist + width/30, height * 3 / 5 + height/15);
      menu.image(SEB_C, moveDist + width/5, height * 3 / 5 +  height/15);
      menu.image(SEB_D, moveDist + width/30, height * 3 / 5 + height/6);
      menu.image(SEB_E, moveDist + width/5,  height * 3 / 5 + height/6);
      menu.endDraw();
    }
  }
}

void updateSEB_A(){
  menu.beginDraw();
  menu.noStroke();
  menu.fill(brushC);
  menu.ellipse(moveDist + width/30 + width/20, height/25 + width/40, 50, 50);
  menu.endDraw();
}

//============BUTTON CLICK============
boolean overRect(float x, float y, float Rwidth, float Rheight)  {
  if (currentPos.x >= x && currentPos.x <= x+Rwidth && currentPos.y >= y && currentPos.y <= y+Rheight) {
    buttonSound();
    return true;
  } else {
    return false;
  }
  //if (mouseX >= x && mouseX <= x+Rwidth && mouseY >= y && mouseY <= y+Rheight) {
  //  buttonSound();
  //  return true;
  //} else {
  //  return false;
  //}
}
