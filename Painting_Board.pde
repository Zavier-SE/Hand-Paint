float lineWeight = 3;
int cursorId = 0;
boolean menuOpen = false;
PImage cursorPhoto;
PGraphics drawingBoard;
PGraphics cursorBoard;
PGraphics menuButton;
PGraphics menu;
color brushC;
int mode;

void setup(){
  //==========BASIC SETTING==========
  fullScreen();
  
  //size(500,500);
  background(0);
  frameRate(1000);
  brushC = color(255);
  mode = 1;
  
  //==========LEAP MOTION SETTING UP==========
  init = true;
  oldPos = new ArrayList<PVector>();
  lastPos = new PVector(0,0);
  currentPos = new PVector();
  
  leap = new LeapMotion(this);
  
  //==========DRAWING BOARD SETTING UP==========
  drawingBoard = createGraphics(width,height);
  drawingBoard.beginDraw();
  drawingBoard.background(0);
  drawingBoard.endDraw();
  
  //==========CURSOR BOARD SETTING UP===========
  cursorBoard = createGraphics(width,height);
  cursorBoard.beginDraw();
  cursorBoard.background(0,0,0,0);
  cursorBoard.endDraw();
  
  //==========MENU BUTTON SETTING UP==========
  menuButton = createGraphics(width/30,height/10);
  menuButton.beginDraw();
  menuButton.background(0,105,204);
  menuButton.endDraw();
  
  //==========MENU SETTING UP==========
  menu = createGraphics(width/3,height);
  menuSetUp();
  
  //==========BRUSH SETTING==========
}

void draw(){
  drawCursor();
  updateMenuOpen();
  updateMenuStatus();
  updateBrushColor();
  updateMenu();
  
  //===========PAINTTING===========
  if (cursorId == 1){
    if(mode == 1){
      noSDraw();
    }else if(mode == 2){
      twoSDraw();
    }else if(mode == 4){
      fourSDraw();
    }
  }
  
}

void drawCursor() {
  //===========Mouse Control==========
  changeCursor();
  if (cursorId == 0) {
    cursorPhoto = loadImage("58afdad6829958a978a4a693.png");
    cursorPhoto.resize(7,7);
    cursor(cursorPhoto,0,0);
  } else if (cursorId == 1) {
    cursorPhoto = loadImage("circle-png-44659.png");
    cursorPhoto.resize(7,7);
    cursor(cursorPhoto,0,0);
  } else if (cursorId == -1) {
    cursorPhoto = loadImage("200px-Yellow_icon.svg.png");
    cursorPhoto.resize(7,7);
    cursor(cursorPhoto,0,0);
  }
  
  //==========LeapMotion Control==========
  changeHandCursor();
  
  if (cursorId == 0) {
    cursorBoard.beginDraw();
    cursorBoard.background(0,0,0,0);
    cursorBoard.fill(255, 0, 0);
    cursorBoard.ellipse(currentPos.x, currentPos.y, 7, 7);
    cursorBoard.endDraw();
  }else if(cursorId == 1){
    cursorBoard.beginDraw();
    cursorBoard.background(0,0,0,0);
    cursorBoard.fill(0, 153, 51);
    cursorBoard.ellipse(currentPos.x, currentPos.y, 7, 7);
    cursorBoard.endDraw();
  }else if(cursorId == -1){
    cursorBoard.beginDraw();
    cursorBoard.background(0,0,0,0);
    cursorBoard.fill(255, 255, 51);
    cursorBoard.ellipse(currentPos.x, currentPos.y, 7, 7);
    cursorBoard.endDraw();
  }
}

void updateMenuStatus(){
    if (menuOpen == true ) {
    image(drawingBoard,0,0);
    image(menuButton,width/3 ,height/2.25);
    image(menu,0,0);
    image(cursorBoard,0,0);
  } else {
    image(menu,0,0);
    image(drawingBoard,0,0);
    image(menuButton,0,height/2.25);
    image(cursorBoard,0,0);
  }
}

void updateMenuOpen() {
  //==========Mouse==========
  if (menuOpen == false && cursorId == -1 && mouseX <= width/30 && mouseX >= 0 && mouseY >= height/2.25 && mouseY <= height/2.25 + height/10) {
    menuOpen = true;
  } else if (menuOpen == true && cursorId == -1 && mouseX <= width/30 + width/3 && mouseX >= width/3 && mouseY >= height/2.25 && mouseY <= height/2.25 + height/10) {
    menuOpen = false;
  }
  //==========Leap Motion==========
  if (menuOpen == false && cursorId == -1 && currentPos.x <= width/30 && currentPos.x >= 0 && currentPos.y >= height/2.25 && currentPos.y <= height/2.25 + height/10) {
    menuOpen = true;
  } else if (menuOpen == true && cursorId == -1 && currentPos.x <= width/30 + width/3 && currentPos.x >= width/3 && currentPos.y >= height/2.25 && currentPos.y <= height/2.25 + height/10) {
    menuOpen = false;
  }
}
