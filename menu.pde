PImage BBB;
PImage SEB_A;
PImage SEB_B;
PImage SEB_C;
PImage SEB_D;
PImage SEB_E;
PImage MBNS;
PImage MBTS;
PImage MBFS;
color menuText = color(102,102,153);

void menuSetUp(){
  //==========BUTTON SETTING==========
  BBB = loadImage("bb.png");
  BBB.resize(width/10,width/20);
  MBNS = loadImage("ns.png");
  MBNS.resize(width/10,width/20);
  MBTS = loadImage("2s.png");
  MBTS.resize(width/10,width/20);
  MBFS = loadImage("4s.png");
  MBFS.resize(width/10,width/20);
  
  //=========MENU LAYOUT==========
  menu.beginDraw();
  menu.background(204,230,255);
  menu.textSize(30);
  menu.fill(menuText);
  menu.text("Basic Bursh",width/50,height/30);
  menu.image(BBB,width/30,height/25);
  menu.textSize(20);
  menu.text("Pick A Colour:",width/50,height/7);
  menu.noStroke();
  menu.fill(brushC);
  menu.ellipse(width/30 + width/20, height/25 + width/40, 50, 50);
  //Color 1
  menu.fill(255);
  menu.rect(width/30,height/6,width/25,width/25);
  //Color 2
  menu.fill(51, 204, 51);
  menu.rect(width/30 + width/25 + width/50,height/6,width/25,width/25);
  //Color 3
  menu.fill(255, 153, 51);
  menu.rect(width/30 + (width/25 + width/50) * 2,height/6,width/25,width/25);
  //Color 4
  menu.fill(204, 0, 255);
  menu.rect(width/30 + (width/25 + width/50) * 3,height/6,width/25,width/25);
  //Color 5
  menu.fill(0, 204, 255);
  menu.rect(width/30 + (width/25 + width/50) * 4,height/6,width/25,width/25);
  menu.stroke(255);
  menu.strokeWeight(7);
  menu.line(0,height/4,width,height/4);
  //=============================Section 2=====================================
  menu.textSize(30);
  menu.fill(menuText);
  menu.text("Painting Modes",width/50,height/4 + height/20);
  menu.tint(179, 255, 102);
  menu.image(MBNS,width/30, height/4 + height/15);
  menu.textSize(13);
  menu.text("No Rational Symmetry",width/28,height/4 + height/6);
  menu.noTint();
  menu.image(MBTS,width/5, height/4 + height/15);
  menu.text("2-fold Rational Symmetry",width/5,height/4 + height/6);
  menu.image(MBFS,width/30, height/2 - height/20);
  menu.text("4-fold Rational Symmetry",width/33,height/2 + height/20);
  menu.endDraw();
}

void updateBrushColor(){
  if (menuOpen == true && cursorId == -1){
    if(overRect(width/30,height/6,width/25,width/25)){
      brushC = color(255);
    } else if(overRect(width/30 + width/25 + width/50,height/6,width/25,width/25)){
      brushC = color(51, 204, 51);
    } else if(overRect(width/30 + (width/25 + width/50) * 2,height/6,width/25,width/25)){
      brushC = color(255, 153, 51);
    } else if(overRect(width/30 + (width/25 + width/50) * 3,height/6,width/25,width/25)){
      brushC = color(204, 0, 255);
    } else if(overRect(width/30 + (width/25 + width/50) * 4,height/6,width/25,width/25)){
      brushC = color(0, 204, 255);
    }
  }
}

void updateMode(){
  if (menuOpen == true && cursorId == -1){
    if(overRect(width/30, height/4 + height/15,width/10,width/20)){
      mode = 1;
      menu.beginDraw();
      menu.tint(179, 255, 102);
      menu.image(MBNS,width/30, height/4 + height/15);
      menu.noTint();
      menu.image(MBTS,width/5, height/4 + height/15);
      menu.image(MBFS,width/30, height/2 - height/20);
      menu.endDraw();
    }else if(overRect(width/5, height/4 + height/15,width/10,width/20)){
      mode = 2;
      menu.beginDraw();
      menu.tint(179, 255, 102);
      menu.image(MBTS,width/5, height/4 + height/15);
      menu.noTint();
      menu.image(MBNS,width/30, height/4 + height/15);
      menu.image(MBFS,width/30, height/2 - height/20);
      menu.endDraw();
    }else if(overRect(width/30, height/2 - height/20,width/10,width/20)){
      mode = 4;
      menu.beginDraw();
      menu.tint(179, 255, 102);
      menu.image(MBFS,width/30, height/2 - height/20);
      menu.noTint();
      menu.image(MBNS,width/30, height/4 + height/15);
      menu.image(MBTS,width/5, height/4 + height/15);
      menu.endDraw();
    }
  }
}

void updateMenu(){
  updateBBB();
  updateMode();
}

void updateBBB(){
  menu.beginDraw();
  menu.noStroke();
  menu.fill(brushC);
  menu.ellipse(width/30 + width/20, height/25 + width/40, 50, 50);
  menu.endDraw();
}


boolean overRect(int x, int y, int Rwidth, int Rheight)  {
  if (currentPos.x >= x && currentPos.x <= x+Rwidth && currentPos.y >= y && currentPos.y <= y+Rheight) {
    return true;
  } else {
    return false;
  }
  //if (mouseX >= x && mouseX <= x+Rwidth && mouseY >= y && mouseY <= y+Rheight) {
  //  return true;
  //} else {
  //  return false;
  //}
}
