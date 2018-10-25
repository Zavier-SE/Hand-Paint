int brushSize = 100;
float brushDist = 1;
PImage brushTB;
PImage brushTC;
PImage brushTD;
PImage brushTE;
PImage brushTF;

void brushSetup(){
  brushTB = loadImage("brushB.png");
  brushTB.resize(brushSize,brushSize);
  brushTC = loadImage("brushC.png");
  brushTC.resize(brushSize/2,brushSize/2);
  brushTD = loadImage("brushD.png");
  brushTD.resize(brushSize/2,brushSize/2);
  brushTE = loadImage("brushE.png");
  brushTE.resize(brushSize,brushSize);
  brushTF = loadImage("brushF.png");
  brushTF.resize(brushSize,brushSize);
}

void basicBrush(float x1,float y1,float x2,float y2,float x3,float y3,float x4,float y4){
  drawingBoard.beginDraw();
  drawingBoard.strokeWeight(lineWeight-2.5);
  drawingBoard.stroke(brushC);
  drawingBoard.fill(brushC);
  drawingBoard.curve (x1, y1, x2, y2, x3, y3, x4, y4);
  drawingBoard.endDraw();
}

void specialBrush(PImage brushPic, float currentX, float currentY){
    drawingBoard.beginDraw();
    drawingBoard.imageMode(CENTER);
    drawingBoard.colorMode(HSB);
    drawingBoard.blendMode(ADD);
    drawingBoard.tint(random(255), random(255),random(255), random(50, 160));
    drawingBoard.pushMatrix();
    drawingBoard.translate(currentX, currentY);
    drawingBoard.rotate(random(2 * PI));
    drawingBoard.image(brushPic,0,0);
    drawingBoard.popMatrix();
    drawingBoard.endDraw();
}
