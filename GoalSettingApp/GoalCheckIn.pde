public class GoalCheckIn {
  private Goal goal;
  //percent progress made on the next milestone 
  private Integer progress;
  //hours spent on goal since last checkin
  private Integer minutes;
  
  public Goal getGoal() {
    return goal;
  }

  public void setGoal(Goal goal) {
    this.goal = goal;
  }

  public Integer getProgress() {
    return progress;
  }

  public void setProgress(Integer progress) {
    this.progress = progress;
  }

  public Integer getMinutes() {
    return minutes;
  }

  public void setMinutes(Integer mins) {
    this.minutes = mins;
  }

  public GoalCheckIn(Goal goal, Integer progress, Integer mins){
    this.goal = goal;
    this.progress = progress;
    this.minutes = mins;
  }
  
  public String toString(){
    Double progPerHour = (double) (this.progress/this.minutes);
    StringBuilder r = new StringBuilder();
    r.append("On " + this.goal.getName() + ", you made: " + progPerHour.toString() + "% progress per hour");
    return r.toString();
  }
}

  