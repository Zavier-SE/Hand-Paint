float lineWeight = 5;
int cursorId = 0;
//int draw = 0;
//int MAXdraw;
PImage load;
PImage cursorPhoto;
PImage instruction;
PGraphics drawingBoard;
PGraphics cursorBoard;
PGraphics menuButton;
PGraphics menu;
boolean menuOpen = false;
color brushC;
int mode;
char brush;

void setup(){
  //==========BASIC SETTING==========
  fullScreen();
  bgm();
  noCursor();
  
  //==========INSTRUCTION SHEET SETTING==========
  instruction = loadImage("instruction.png");
  instruction.resize(width,height);
  
  
  //size(500,500);
  background(0);
  frameRate(1000);
  brushC = color(255);
  mode = 1;
  brush = 'a';
  
  //==========LEAP MOTION SETTING UP==========
  init = true;
  oldPos = new ArrayList<PVector>();
  lastPos = new PVector(0,0);
  currentPos = new PVector(-1,-1);
  
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
  menu = createGraphics(width/2,height);
  menuSetUp();
  
  //==========BRUSH SETTING==========
  brushSetup();
}

void draw(){
  drawCursor();
  updateMenuOpen();
  updateUserInterface();
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
  
  //============CLEAR============
  if(keyPressed){
    if(key == 'c'){
      drawingBoard.beginDraw();
      drawingBoard.background(0);
      drawingBoard.endDraw();
    }else if(key == 's'){
      drawingBoard.save("Save/paint.png");
    }
    //}else if(key == 'u'){
    //  if(draw > 1){
    //    draw = draw-2;
    //    load = loadImage("TEMP/screen" + draw + ".png");
    //    drawingBoard.beginDraw();
    //    drawingBoard.image(load,0,0);
    //    drawingBoard.endDraw();
    //  }
    //}else if(key == 'r'){
    //  if(draw < MAXdraw){
    //    draw = draw+1;
    //    load = loadImage("TEMP/screen" + draw + ".png");
    //    drawingBoard.beginDraw();
    //    drawingBoard.image(load,0,0);
    //    drawingBoard.endDraw();
    //  }
    //}
  }
  
}

void drawCursor() {
  //===========Mouse Control==========
  //changeCursor();
  //if (cursorId == 0) {
  //  cursorPhoto = loadImage("58afdad6829958a978a4a693.png");
  //  cursorPhoto.resize(7,7);
  //  cursor(cursorPhoto,0,0);
  //} else if (cursorId == 1) {
  //  cursorPhoto = loadImage("circle-png-44659.png");
  //  cursorPhoto.resize(7,7);
  //  cursor(cursorPhoto,0,0);
  //} else if (cursorId == -1) {
  //  cursorPhoto = loadImage("200px-Yellow_icon.svg.png");
  //  cursorPhoto.resize(7,7);
  //  cursor(cursorPhoto,0,0);
  //}
  
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

void updateUserInterface(){
    if (menuOpen == true ) {
    image(drawingBoard,0,0);
    image(menuButton,width/2,height/2.25);
    image(menu,0,0);
    image(cursorBoard,0,0);
  } else {
    if (currentPos.x == -1 && currentPos.y == -1){
      image(menu,0,0);
      image(drawingBoard,0,0);
      image(menuButton,0,height/2.25);
      image(cursorBoard,0,0);
      tint(255, 200);
      image(instruction,0,0);
      noTint();
    }else{
      image(menu,0,0);
      image(drawingBoard,0,0);
      image(menuButton,0,height/2.25);
      image(cursorBoard,0,0);
    }
  }
}

void updateMenuOpen() {
  //==========Mouse==========
  //if (menuOpen == false && cursorId == -1 && mouseX <= width/30 && mouseX >= 0 && mouseY >= height/2.25 && mouseY <= height/2.25 + height/10) {
  //  menuOpen = true;
  //  menuSound();
  //} else if (menuOpen == true && cursorId == -1 && mouseX <= width/30 + width/2 && mouseX >= width/2 && mouseY >= height/2.25 && mouseY <= height/2.25 + height/10) {
  //  menuOpen = false;
  //  menuSound();
  //}
  //==========Leap Motion==========
  if (menuOpen == false && cursorId == -1 && currentPos.x <= width/30 && currentPos.x >= 0 && currentPos.y >= height/2.25 && currentPos.y <= height/2.25 + height/10) {
    menuOpen = true;
    menuSound();
  } else if (menuOpen == true && cursorId == -1 && currentPos.x <= width/30 + width/2 && currentPos.x >= width/2 && currentPos.y >= height/2.25 && currentPos.y <= height/2.25 + height/10) {
    menuOpen = false;
    menuSound();
  }
}
