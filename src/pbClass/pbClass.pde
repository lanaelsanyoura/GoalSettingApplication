void setup(){
  size(640,360);
}

void draw(){
  background(0);
  fill(255,255,255);
  rect(25,25,200,30);
  double p = new Double(34);
  GProgressBar pb = new GProgressBar(p, 25, 25);
  //float bar = 12;
  //fill(27,245,81);
  //rect(25, 25, bar, 30, 35);
}

final class GProgressBar{
   //100% bar is 200 to 30
   public GProgressBar(double progress, float x, float y){
     float bar = (float)(progress*2);
     fill(27,245,81);
     rect(x, y, bar, 30, 7);
   }
}