public class GoalProgressBar{
   //100% bar is 200 to 30
   public GoalProgressBar(Double progress, float x, float y){
     float bar = (float) (progress/100);
     fill(27,245,81);
     rect(x, y, bar, 30, 7);
   }
}