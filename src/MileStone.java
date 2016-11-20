import com.sun.jmx.snmp.Timestamp;
import com.sun.prism.Image;

public class MileStone {
	Timestamp time;
	String description;
	Image pic;
	boolean acomplished;
	int howFarYouHaveCome;
	public MileStone(Timestamp time, String description, Image pic, boolean acomplished, int howFarYouHaveCome) {
		this.time = time;
		this.description = description;
		this.pic = pic;
		this.acomplished = acomplished;
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
	public Image getPic() {
		return pic;
	}
	public void setPic(Image pic) {
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
	
}
