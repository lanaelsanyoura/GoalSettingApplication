import java.util.ArrayList;
import java.util.LinkedList;

import com.sun.jmx.snmp.Timestamp;

public class Goal {
	LinkedList<MileStone> mileStones = new LinkedList<MileStone>();
	ArrayList<GoalCheckIn> checkIns = new ArrayList<GoalCheckIn>();
	String description;
	Timestamp start;
	MileStone nextCheckPoint;
	Timestamp end;
	double progress;
	
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
}
