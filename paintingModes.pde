void noSDraw(){
  //###########BASIC BRUSH(OLD)#############
    //drawingBoard.beginDraw();
    //drawingBoard.strokeWeight(lineWeight-2.5);
    //drawingBoard.stroke(brushC);
    //drawingBoard.fill(brushC);
    //==========Leap Motion==========
    //drawingBoard.ellipse(currentPos.x, currentPos.y,10,10);
    //drawingBoard.curve (
    //      oldPos.get(0).x, oldPos.get(0).y,
    //      oldPos.get(1).x, oldPos.get(1).y,
    //      oldPos.get(2).x, oldPos.get(2).y,
    //      currentPos.x, currentPos.y);
    //==========MOUSE==========
    //drawingBoard.ellipse(mouseX, mouseY,10,10);
    //drawingBoard.endDraw();
    basicBrush(oldPos.get(0).x, oldPos.get(0).y,
               oldPos.get(1).x, oldPos.get(1).y,
               oldPos.get(2).x, oldPos.get(2).y,
               currentPos.x,    currentPos.y);
}

void twoSDraw(){
  //###########BASIC BRUSH(OLD)#############
    //drawingBoard.beginDraw();
    //drawingBoard.strokeWeight(lineWeight-1.5);
    //drawingBoard.stroke(brushC);
    //drawingBoard.fill(brushC);
    //==========Leap Motion==========
    //drawingBoard.ellipse(currentPos.x, currentPos.y,10,10);
    //drawingBoard.ellipse(width-currentPos.x,currentPos.y,10,10);
    //drawingBoard.curve (
    //      oldPos.get(0).x, oldPos.get(0).y,
    //      oldPos.get(1).x, oldPos.get(1).y,
    //      oldPos.get(2).x, oldPos.get(2).y,
    //      currentPos.x, currentPos.y);
    //drawingBoard.curve (
    //      width - oldPos.get(0).x,  oldPos.get(0).y,
    //      width - oldPos.get(1).x,  oldPos.get(1).y,
    //      width - oldPos.get(2).x,  oldPos.get(2).y,
    //      width - currentPos.x,     currentPos.y);
    //==========MOUSE==========
    //drawingBoard.ellipse(mouseX, mouseY,10,10);
    //drawingBoard.ellipse(width-mouseX,mouseY,10,10);
    //drawingBoard.endDraw();
    basicBrush(oldPos.get(0).x, oldPos.get(0).y,
               oldPos.get(1).x, oldPos.get(1).y,
               oldPos.get(2).x, oldPos.get(2).y,
               currentPos.x,    currentPos.y);
    basicBrush(width - oldPos.get(0).x,  oldPos.get(0).y,
               width - oldPos.get(1).x,  oldPos.get(1).y,
               width - oldPos.get(2).x,  oldPos.get(2).y,
               width - currentPos.x,     currentPos.y);
    
}

void fourSDraw(){
  //###########BASIC BRUSH(OLD)#############
    //drawingBoard.beginDraw();
    //drawingBoard.strokeWeight(lineWeight);
    //drawingBoard.noStroke();
    //drawingBoard.fill(brushC);
    //==========Leap Motion==========
    //drawingBoard.ellipse(currentPos.x, currentPos.y,10,10);
    //drawingBoard.ellipse(width-currentPos.x,currentPos.y,10,10);
    //drawingBoard.ellipse(currentPos.x,height - currentPos.y,10,10);
    //drawingBoard.ellipse(width-currentPos.x,height - currentPos.y,10,10);
    //drawingBoard.curve (
    //      oldPos.get(0).x,  oldPos.get(0).y,
    //      oldPos.get(1).x,  oldPos.get(1).y,
    //      oldPos.get(2).x,  oldPos.get(2).y,
    //      currentPos.x,     currentPos.y);
    //drawingBoard.curve (
    //      width - oldPos.get(0).x,  oldPos.get(0).y,
    //      width - oldPos.get(1).x,  oldPos.get(1).y,
    //      width - oldPos.get(2).x,  oldPos.get(2).y,
    //      width - currentPos.x,     currentPos.y);
    //drawingBoard.curve (
    //      oldPos.get(0).x,  height - oldPos.get(0).y,
    //      oldPos.get(1).x,  height - oldPos.get(1).y,
    //      oldPos.get(2).x,  height - oldPos.get(2).y,
    //      currentPos.x,     height - currentPos.y);
    //drawingBoard.curve (
    //      width - oldPos.get(0).x,  height - oldPos.get(0).y,
    //      width - oldPos.get(1).x,  height - oldPos.get(1).y,
    //      width - oldPos.get(2).x,  height - oldPos.get(2).y,
    //      width - currentPos.x,     height - currentPos.y);
    //==========MOUSE==========
    //drawingBoard.ellipse(mouseX, mouseY,10,10);
    //drawingBoard.ellipse(width-mouseX,mouseY,10,10);
    //drawingBoard.ellipse(mouseX,height - mouseY,10,10);
    //drawingBoard.ellipse(width-mouseX,height - mouseY,10,10);
    //drawingBoard.endDraw();
    basicBrush(oldPos.get(0).x, oldPos.get(0).y,
               oldPos.get(1).x, oldPos.get(1).y,
               oldPos.get(2).x, oldPos.get(2).y,
               currentPos.x,    currentPos.y);
    basicBrush(width - oldPos.get(0).x,  oldPos.get(0).y,
               width - oldPos.get(1).x,  oldPos.get(1).y,
               width - oldPos.get(2).x,  oldPos.get(2).y,
               width - currentPos.x,     currentPos.y);
    basicBrush(oldPos.get(0).x,  height - oldPos.get(0).y,
               oldPos.get(1).x,  height - oldPos.get(1).y,
               oldPos.get(2).x,  height - oldPos.get(2).y,
               currentPos.x,     height - currentPos.y);
    basicBrush(width - oldPos.get(0).x,  height - oldPos.get(0).y,
               width - oldPos.get(1).x,  height - oldPos.get(1).y,
               width - oldPos.get(2).x,  height - oldPos.get(2).y,
               width - currentPos.x,     height - currentPos.y);
}
