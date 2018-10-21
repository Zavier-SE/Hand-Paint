import de.voidplus.leapmotion.*;

LeapMotion leap;
ArrayList<PVector> oldPos;
PVector lastPos;
PVector currentPos;
boolean init;

void changeHandCursor(){
  if (leap.countHands() == 0 && leap.countHands() != 1){
    init = true;
  }else if(leap.countHands() == 1){
    Hand hand = leap.getHands().get(0);
    if (hand.getOutstretchedFingers().size() == 0){
      cursorId = 0;
      init = true;
      currentPos = hand.getStabilizedPalmPosition();
    } else if(hand.getOutstretchedFingers().size() == 1){
      cursorId = -1;
      init = true;
      currentPos = hand.getStabilizedPalmPosition();
    } else if(hand.getOutstretchedFingers().size() > 1 && menuOpen == false){
      cursorId = 1;
      currentPos = hand.getStabilizedPalmPosition();
      if (init) {
          lastPos = currentPos;
          oldPos.clear();
          for(int i=0; i < 3; i++){
            oldPos.add(lastPos);
          }
          init = false;
        }
        lastPos = currentPos;
        oldPos.remove(0);
        oldPos.add(lastPos);
    }
    print(hand.getOutstretchedFingers().size());
  }
}
