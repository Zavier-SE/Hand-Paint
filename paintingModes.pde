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
    //##############################################################################
    
    switch(brush){
      case 'a' : 
                 basicBrush(oldPos.get(0).x, oldPos.get(0).y,
                            oldPos.get(1).x, oldPos.get(1).y,
                            oldPos.get(2).x, oldPos.get(2).y,
                            currentPos.x,    currentPos.y);
                 break;
      case 'b' :
                 specialBrush(brushTB,currentPos.x,currentPos.y);
                 break;
      case 'c' :
                 specialBrush(brushTC,currentPos.x,currentPos.y);
                 break;
      case 'd' :
                 specialBrush(brushTD,currentPos.x,currentPos.y);
                 break;
      case 'e' :
                 specialBrush(brushTE,currentPos.x,currentPos.y);
                 break;
      case 'f' :
                 specialBrush(brushTF,currentPos.x,currentPos.y);
                 break;
                 
      default:   break;
    
      }
      
      //drawingBoard.save("TEMP/screen" + draw + ".png");
      //MAXdraw = draw;
      //draw = draw + 1;
    
}

void twoSDraw(){
  //###########BASIC BRUSH 2-FOLD(OLD)#############
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
    //##############################################################################
    
    
      switch(brush){
      case 'a' : 
                 basicBrush(oldPos.get(0).x, oldPos.get(0).y,
                              oldPos.get(1).x, oldPos.get(1).y,
                              oldPos.get(2).x, oldPos.get(2).y,
                              currentPos.x,    currentPos.y);
                 basicBrush(width - oldPos.get(0).x,  oldPos.get(0).y,
                              width - oldPos.get(1).x,  oldPos.get(1).y,
                              width - oldPos.get(2).x,  oldPos.get(2).y,
                              width - currentPos.x,     currentPos.y);
                 break;
      case 'b' :
                 specialBrush(brushTB,currentPos.x,currentPos.y);
                 specialBrush(brushTB,width - currentPos.x,currentPos.y);
                 break;
      case 'c' :
                 specialBrush(brushTC,currentPos.x,currentPos.y);
                 specialBrush(brushTC,width - currentPos.x,currentPos.y);
                 break;
      case 'd' :
                 specialBrush(brushTD,currentPos.x,currentPos.y);
                 specialBrush(brushTD,width - currentPos.x,currentPos.y);
                 break;
      case 'e' :
                 specialBrush(brushTE,currentPos.x,currentPos.y);
                 specialBrush(brushTE,width - currentPos.x,currentPos.y);
                 break;
      case 'f' :
                 specialBrush(brushTF,currentPos.x,currentPos.y);
                 specialBrush(brushTF,width - currentPos.x,currentPos.y);
                 break;
                 
      default:   break;
      
    }
    
    //drawingBoard.save("TEMP/screen" + draw + ".png");
    //MAXdraw = draw;
    //draw = draw + 1;
    
}

void fourSDraw(){
  //###########BASIC BRUSH 4-FOLD(OLD)#############
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
    //basicBrush(oldPos.get(0).x, oldPos.get(0).y,
    //           oldPos.get(1).x, oldPos.get(1).y,
    //           oldPos.get(2).x, oldPos.get(2).y,
    //           currentPos.x,    currentPos.y);
    //basicBrush(width - oldPos.get(0).x,  oldPos.get(0).y,
    //           width - oldPos.get(1).x,  oldPos.get(1).y,
    //           width - oldPos.get(2).x,  oldPos.get(2).y,
    //           width - currentPos.x,     currentPos.y);
    //basicBrush(oldPos.get(0).x,  height - oldPos.get(0).y,
    //           oldPos.get(1).x,  height - oldPos.get(1).y,
    //           oldPos.get(2).x,  height - oldPos.get(2).y,
    //           currentPos.x,     height - currentPos.y);
    //basicBrush(width - oldPos.get(0).x,  height - oldPos.get(0).y,
    //           width - oldPos.get(1).x,  height - oldPos.get(1).y,
    //           width - oldPos.get(2).x,  height - oldPos.get(2).y,
    //           width - currentPos.x,     height - currentPos.y);
    //##############################################################################
               
      switch(brush){
      case 'a' : 
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
                 break;
      case 'b' :
                 specialBrush(brushTB,currentPos.x,currentPos.y);
                 specialBrush(brushTB,width - currentPos.x,currentPos.y);
                 specialBrush(brushTB,currentPos.x,height - currentPos.y);
                 specialBrush(brushTB,width - currentPos.x,height - currentPos.y);
                 break;
      case 'c' :
                 specialBrush(brushTC,currentPos.x,currentPos.y);
                 specialBrush(brushTC,width - currentPos.x,currentPos.y);
                 specialBrush(brushTC,currentPos.x,height - currentPos.y);
                 specialBrush(brushTC,width - currentPos.x,height - currentPos.y);
                 break;
      case 'd' :
                 specialBrush(brushTD,currentPos.x,currentPos.y);
                 specialBrush(brushTD,width - currentPos.x,currentPos.y);
                 specialBrush(brushTD,currentPos.x,height - currentPos.y);
                 specialBrush(brushTD,width - currentPos.x,height - currentPos.y);
                 break;
      case 'e' :
                 specialBrush(brushTE,currentPos.x,currentPos.y);
                 specialBrush(brushTE,width - currentPos.x,currentPos.y);
                 specialBrush(brushTE,currentPos.x,height - currentPos.y);
                 specialBrush(brushTE,width - currentPos.x,height - currentPos.y);
                 break;
      case 'f' :
                 specialBrush(brushTF,currentPos.x,currentPos.y);
                 specialBrush(brushTF,width - currentPos.x,currentPos.y);
                 specialBrush(brushTF,currentPos.x,height - currentPos.y);
                 specialBrush(brushTF,width - currentPos.x,height - currentPos.y);
                 break;
                 
      default:   break;
      }
      
      //drawingBoard.save("TEMP/screen" + draw + ".png");
      //MAXdraw = draw;
      //draw = draw + 1;
}
