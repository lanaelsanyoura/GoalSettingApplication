//package src;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;

import com.sun.jmx.snmp.Timestamp;

public class User {
  private String name;
  private File profileImage; 
  private ArrayList<Goal> goals;
  private ArrayList<checkIn> checkIns;
  private String pwd;
  
  public String getPwd() {
    return pwd;
  }

  public void setPwd(String pwd) {
    this.pwd = pwd;
  }

  public User(String name, File image, String pwd){
    this.name = name;
    this.goals = new ArrayList<Goal>();
    this.checkIns = new ArrayList<CheckIn>();
    this.pwd = pwd;
    this.profileImage = image;
  }
  public void setNewGoal(LinkedList<MileStone> mileStones, String description, String name, Timestamp end){
    this.goals.add(new Goal(mileStones, description, name, end, new Timestamp(System.currentTimeMillis())));
  }
  public void generalCheckIn(int productivity, int mood, ArrayList<Goal> goals, ArrayList<Integer> progressOnGoals, ArrayList<Integer> minutesOnGoals){
    ArrayList<GoalCheckIn> goalCheckIns = new ArrayList<GoalCheckIn>();
    for(int i = 0; i < goals.size(); i++){
      goalCheckIns.add(new GoalCheckIn(goals.get(i), progressOnGoals.get(i), minutesOnGoals.get(i)));
    }
    this.checkIns.add(new checkIn(productivity, mood, goalCheckIns));
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