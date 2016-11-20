import java.io.File;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.LinkedList;

import com.sun.jmx.snmp.Timestamp;



public class system {
  public static ArrayList<User> users = new ArrayList<User>();
  public static User activeUser;
  //Precondition: user cannot already be registered
  public static void addUser(String userName, File image, String password){
    users.add(new User(userName, image, password));
    if(users.size() == 1){
      activeUser = users.get(0);
    }
  }

  public static boolean checkLogin(String userName, String password){
    for(User u: users){
      if(u.getName() == userName){
        if(u.getPwd() == password){
          return true;
        }
        break;
      }
    }
    return false;
  }
  public static boolean checkIfUserExists(String userName){
    for(User u: users){
      if(u.getName() == userName){
        return true;
      }
    }
    return false;
  }
  //assuming you've already checked if the login was successful
  public static void logIn(User u){
    activeUser = u;
  }
  public static void addGoal(LinkedList<MileStone> mileStones, String description, String name, Timestamp end){
    activeUser.setNewGoal(mileStones, description, name, end);
  }
  public static void checkIn(int productivity, int mood, ArrayList<Goal> goals, ArrayList<Integer> progressOnGoals, ArrayList<Integer> minutesOnGoals){
    activeUser.generalCheckIn(productivity, mood, goals, progressOnGoals, minutesOnGoals);
  }
  public static void removeMileStone(Goal g, MileStone m){
    for(int i = 0; i < g.getMileStones().size(); i++){
      if(g.getMileStones().get(i).equals(m)){
        g.removeMileStone(i);
        break;
      }
    }
  }
  public static void main(String[] args){
    addUser("ayalaemmylou", null, "password");
    addUser("cait", null, "12345");
    addUser("Lana", null, "qwerty");
    logIn(users.get(0));
    LinkedList<MileStone> mileStones = new LinkedList<MileStone>();
    File mileStonePic = null;
    mileStones.add(new MileStone(new Timestamp(System.currentTimeMillis() + Math.round(1892160000/4)), "Attend U of T hacks", mileStonePic, 25 ));
    DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
    try {
      Date date = (Date) dateFormat.parse("20/11/2017");
      long time = date.getTime();
      Timestamp end = new Timestamp(time);
      addGoal(mileStones, "Attend 4 hackathons withing the next year", "Hackathon Challenge!", end);
      for(Goal g: activeUser.getGoals()){
        System.out.println(g);
      }

    } catch (ParseException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
      }
}