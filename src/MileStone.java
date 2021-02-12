import java.io.File;

import com.sun.jmx.snmp.Timestamp;
import com.sun.prism.Image;

public class MileStone {
	Timestamp time;
	String description;
	File pic;
	boolean acomplished;
	int howFarYouHaveCome;
	public MileStone(Timestamp time, String description, File pic, int howFarYouHaveCome) {
		this.time = time;
		this.description = description;
		this.pic = pic;
		this.acomplished = false;
		this.howFarYouHaveCome = howFarYouHaveCome;
	}
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public File getPic() {
		return pic;
	}
	public void setPic(File pic) {
		this.pic = pic;
	}
	public boolean isAcomplished() {
		return acomplished;
	}
	public void setAcomplished(boolean acomplished) {
		this.acomplished = acomplished;
	}
	public int getHowFarYouHaveCome() {
		return howFarYouHaveCome;
	}
	public void setHowFarYouHaveCome(int howFarYouHaveCome) {
		this.howFarYouHaveCome = howFarYouHaveCome;
	}
	@Override
	public String toString() {
		return "MileStone [time=" + time + ", description=" + description + ", pic=" + pic + ", acomplished="
				+ acomplished + ", howFarYouHaveCome=" + howFarYouHaveCome + "]";
	}
	
	
}
