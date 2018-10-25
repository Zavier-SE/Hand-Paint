import beads.*;

AudioContext ac;
AudioContext bgm;

void menuSound(){
  ac = new AudioContext();
  String PlayerName = dataPath("")+ "/425209__velkstar__water-drop.wav";
  SamplePlayer menuSound = new SamplePlayer(ac,SampleManager.sample(PlayerName));
  menuSound.setLoopType(SamplePlayer.LoopType.NO_LOOP_FORWARDS);
  Gain g = new Gain(ac, 1, 1);
  g.addInput(menuSound);
  ac.out.addInput(g);
  ac.start();
}

void buttonSound(){
  ac = new AudioContext();
  String PlayerName = dataPath("")+ "/192271__lebaston100__click.wav";
  SamplePlayer buttonSound = new SamplePlayer(ac,SampleManager.sample(PlayerName));
  buttonSound.setLoopType(SamplePlayer.LoopType.NO_LOOP_FORWARDS);
  Gain g = new Gain(ac, 1, 1);
  g.addInput(buttonSound);
  ac.out.addInput(g);
  ac.start();
}

void bgm() {
  bgm = new AudioContext();
  String BgPlayerName = dataPath("")+ "/339324__inspectorj__stream-water-c.wav";
  SamplePlayer BgSound = new SamplePlayer(bgm,SampleManager.sample(BgPlayerName));
  BgSound.setLoopType(SamplePlayer.LoopType.LOOP_FORWARDS);
  Gain b = new Gain(bgm, 1, 1);
  b.addInput(BgSound);
  bgm.out.addInput(b);
  bgm.start();
}
