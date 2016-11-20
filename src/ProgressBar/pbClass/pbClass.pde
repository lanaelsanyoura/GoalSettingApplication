void setup(){
  size(640,360);
}

void draw(){
  background(0);
  //fill(255,255,255);
  rect(25,25,200,30);
  Double p = new Double(1);
  //GoalProgressBar pb = new GoalProgressBar(p, 25, 25);
  float bar = (float) (p/100);
  fill(27,245,81);
  rect(25, 25, bar, 30, 35);
}