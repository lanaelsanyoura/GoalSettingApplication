public class GoalCheckIn {
	private Goal goal;
	//percent progress made on the next milestone 
	private Integer progress;
	//hours spent on goal since last checkin
	private Integer hrs;
	
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

	public Integer getHrs() {
		return hrs;
	}

	public void setHrs(Integer hrs) {
		this.hrs = hrs;
	}

	public GoalCheckIn(Goal goal, Integer progress, Integer hours){
		this.goal = goal;
		this.progress = progress;
		this.hrs = hours;
	}
	
	public String toString(){
		Double progPerHour = (double) (this.progress/this.hrs);
		StringBuilder r = new StringBuilder();
		r.append("On " + this.goal.getName() + ", you made: " + progPerHour.toString() + "% progress per hour");
		return r.toString();
	}
}

  