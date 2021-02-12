System system = new System();
int mode;
import controlP5.*;

ControlP5 cp5;
ControlP5 cp4;
ControlP5 cp2;
ControlP5 cp6;
Textfield goalTextField;
Textfield password;
Textfield userName;
PShape plus;
String textValue = "";
void setup() {
  //size(1920, 1080);
  //fullScreen();
  size(1000, 600);  // size always goes first!
  if (frame != null) {
    frame.setResizable(true);
  }
  PImage img;
  img = loadImage("bg.jpg");
  img.resize(1000, 600);
  background(img);
  PFont font = createFont("arial",20);
  
  cp5 = new ControlP5(this);
  cp4 = new ControlP5(this);
  cp6 = new ControlP5(this);

  if (mode == 0) {
    cp6.hide();
  }
  
  goalTextField = cp6.addTextfield("")
     .setPosition(80,100)
     .setSize(180,30)
     .setFont(font)
     .setFocus(true)
     .setColor(color(250,250,250))
     ;
     
   cp6.addBang("addGoal")
     .setPosition(270,100)
     .setSize(70,30)
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
     ;  
    cp6.addBang("EditGoal") 
     .setPosition(270,140)
     .setSize(70,30)
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
     ; 
    
    cp6.addBang("DeleteGoal") 
     .setPosition(270,180)
     .setSize(70,30)
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
     ;
    
  userName = cp4.addTextfield("")
     .setPosition(400,300)
     .setSize(200,30)
     .setFont(font)
     .setFocus(true)
     .setColor(color(250,250,250))
     ;
                 
  password = cp5.addTextfield("")
     .setPosition(400,350)
     .setSize(200,30)
     .setFont(createFont("arial",20))
     .setAutoClear(false)
     ;
  cp5.addBang("signin")
     .setPosition(400,400)
     .setSize(70,30)
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
     ;
  textFont(font);

}
void draw() {
  if (mode == 0) {
    system.signIn();
    
  }
  else if (mode == 1) {
    
    fill(208, 196, 237);
    rect(0,0, width, height);
    fill(250, 250, 250);
    rect(60, 75, 300, 500);
    
    fill(0,0,0);
    //text("Your Goals", 100, 100);
    system.goalSetting();
  }
    
}

class System {
  HashMap<String, User> nameTouser;
  User currentUser;
  System(){
    /*
    int[] white = {250, 250, 250};
    int[] grey = {179,175,188};
    int[] darkPurple = {158,122,242}; */
    this.nameTouser = new HashMap<String, User>();
    currentUser = null;
    
  }
  void signIn(){
    stroke(203, 185, 245);
    fill(203, 185, 245);
    rect(350, 100, 300, 400);
    stroke(203, 185, 245);
    ellipse(500, 200, 170,170);
  }
  void goalSetting() {
    getGoal();
    
}
  void openModal() {
    
  }

 
  void getGoal() {
    ArrayList<Goal> goals = currentUser.getGoals();
    String goalBuffer = "";
     for (Goal goal: goals) {
       goalBuffer += goal.toString();
     }
     textSize(20);
     text(goalBuffer, 100, 200); 
 }
   
}

/**
* ControlP5 Textfield
*
*
* find a list of public methods available for the Textfield Controller
* at the bottom of this sketch.
*
* by Andreas Schlegel, 2012
* www.sojamo.de/libraries/controlp5
*
*/
 public void addGoal() {
   String newGoal = goalTextField.getText();
   //TableRow newRow = system.currentUser.table.addRow();
    //newRow.setString("Goal",newGoal);
    //saveTable(system.currentUser.table, "data/new.csv");
 }


public void clear() {
  cp5.get(Textfield.class,"textValue").clear();
}

public void signin() {
    String username = userName.getText();
    String pwd = password.getText();
    cp4.hide();
    cp5.hide();
    cp6.show();
    system.currentUser = new User(username,  null, pwd);
    mode = 1; 
    
   
  }


public void input(String theText) {
  // automatically receives results from controller input
  println("a textfield event for controller 'input' : "+theText);
}