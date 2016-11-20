import java.util.ArrayList;

import com.sun.jmx.snmp.Timestamp;

public class Goal {
	ArrayList<MileStone> mileStones = new ArrayList<MileStone>();
	ArrayList<checkIn> checkIns = new ArrayList<checkIn>();
	String description;
	Timestamp start;
	MileStone nextCheckPoint;
	Timestamp end;
	double progress;
	
	public Goal(Arraylist<MileStone> mileStones, ArrayList<checkIn> checkIns, String description, Timestamp end, Timestamp start, double progress){
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
	
}
