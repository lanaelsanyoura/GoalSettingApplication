import java.util.List;

import com.sun.jmx.snmp.Timestamp;

public class checkIn {

	private Timestamp timestamp;
	//user rated productivity out of 10
	private Integer productivity;
	//user rated mood out of 10
	private Integer mood;
	public List<GoalCheckIn> goalCheckIns;
	
	public Integer getProductivity() {
		return productivity;
	}
	public void setProductivity(Integer productivity) {
		this.productivity = productivity;
	}
	public Integer getMood() {
		return mood;
	}
	public void setMood(Integer mood) {
		this.mood = mood;
	}
	
	public checkIn(Integer productivity, Integer mood){
		this.timestamp = new Timestamp(System.currentTimeMillis());
		this.productivity = productivity;
		this.mood = mood;
	}
	
	public String toString(){
		StringBuilder r = new StringBuilder();
		r.append("Overall Prodcutivity (out of 10): " + this.productivity);
		r.append(System.getProperty("line.separator"));
		r.append("Overall Mood (out of 10): " + this.mood);
		for (GoalCheckIn GCI:goalCheckIns){
			r.append(GCI.toString());
			r.append(System.getProperty("line.separator"));
		}
		return r.toString();		
	}
}
