void basicBrush(float x1,float y1,float x2,float y2,float x3,float y3,float x4,float y4){
  drawingBoard.beginDraw();
  drawingBoard.strokeWeight(lineWeight-2.5);
  drawingBoard.stroke(brushC);
  drawingBoard.curve (x1, y1, x2, y2, x3, y3, x4, y4);
  drawingBoard.endDraw();
}
