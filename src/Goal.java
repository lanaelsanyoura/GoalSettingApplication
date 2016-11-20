import java.util.ArrayList;
import java.util.LinkedList;

import com.sun.jmx.snmp.Timestamp;

public class Goal {
	private LinkedList<MileStone> mileStones = new LinkedList<MileStone>();
	private ArrayList<GoalCheckIn> checkIns = new ArrayList<GoalCheckIn>();
	private String description;
	private Timestamp start;
	private MileStone nextCheckPoint;
	private Timestamp end;
	private double progress;
	

	public Goal(LinkedList<MileStone> mileStones, ArrayList<GoalCheckIn> checkIns, String description, Timestamp end, Timestamp start, double progress){

		this.mileStones = mileStones;
		this.checkIns = checkIns;
		this.description = description;
		this.start = start;
		this.end = end;
		this.progress = 0;
		if(mileStones.size() > 0){
			this.nextCheckPoint = mileStones.get(0);
		}
	}
	public void addMileStone(int indexOfNewMileStone, MileStone newMileStone){
		if(this.mileStones.get(indexOfNewMileStone) == nextCheckPoint){
			nextCheckPoint = newMileStone;
		}
		this.mileStones.add(indexOfNewMileStone, newMileStone);
	}
	public void removeMileStone(int indexToRemove){
		if(this.mileStones.get(indexToRemove) == nextCheckPoint){
			nextCheckPoint = this.mileStones.get(indexToRemove + 1);
		}
		this.mileStones.remove(indexToRemove);
	}
	public void addCheckIn(GoalCheckIn checkIn){
		this.checkIns.add(checkIn);
	}
	public LinkedList<MileStone> getMileStones() {
		return mileStones;
	}
	public ArrayList<GoalCheckIn> getCheckIns() {
		return checkIns;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Timestamp getStart() {
		return start;
	}
	public MileStone getNextCheckPoint() {
		return nextCheckPoint;
	}
	public Timestamp getEnd() {
		return end;
	}
	public void setEnd(Timestamp end) {
		this.end = end;
	}
	public double getProgress() {
		return progress;
	}
	public void setProgress(double progress) {
		this.progress = progress;
	}
	
}
