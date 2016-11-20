//package src;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import com.sun.jmx.snmp.Timestamp;

public class User {
	private String name;
	private File profileImage; 
	private ArrayList<Goal> goals;
	private ArrayList<checkIn> checkIns;
	
	public User(String name, File image) {
		this.name = name;
		this.goals = new ArrayList<Goal>();
		this.checkIns = new ArrayList<>();
		this.profileImage = image;
	}

	public File getProfileImage() {
		return profileImage;
	}

	public void setProfileImage(File profileImage) {
		this.profileImage = profileImage;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public ArrayList<Goal> getGoals() {
		return goals;
	}

	/**
	 * Setting a new goal
	 * @param goals
	 */
	public void setGoals(Goal goal) {
		this.goals.add(goal);
	}

	public ArrayList<checkIn> getCheckIns() {
		return this.checkIns;
	}
	public void setCheckIns(ArrayList<checkIn> checkIns) {
		this.checkIns = checkIns;
	}
}
