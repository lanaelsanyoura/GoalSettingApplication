import com.sun.jmx.snmp.Timestamp;

public class checkIn {

	private long timestamp;
	private Integer productivity;
	private Integer mood;
	
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
	
	public checkIn(Goal goal, Integer hours, Integer productivity, Integer mood){
		this.timestamp = Timestamp.getTime();
		this.productivity = productivity;
		this.mood = mood;
	}
	
}
