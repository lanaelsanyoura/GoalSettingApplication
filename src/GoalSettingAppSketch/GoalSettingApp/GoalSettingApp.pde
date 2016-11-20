System system = new System();
int mode;
import controlP5.*;

ControlP5 cp5;
ControlP5 cp4;
ControlP5 cp2;
ControlP5 cp6;
ControlP5 modal;
Textfield goalTextField;
Textfield password;
Textfield userName;
Textfield description;
Textfield mileStone;
Textfield endDate;
PShape plus;
PImage profile;
String textValue = "";
void setup() {
  //size(1920, 1080);
  //fullScreen();
  size(1000, 600);  // size always goes first!
  if (frame != null) {
    frame.setResizable(true);
  }
  PImage img;
  
  profile = loadImage("girl.png");
  img = loadImage("bg.jpg");
  img.resize(1000, 600);
  background(img);
  PFont font = createFont("arial",20);
  
  cp5 = new ControlP5(this);
  cp4 = new ControlP5(this);
  cp6 = new ControlP5(this);
  modal = new ControlP5(this);

  if (mode == 0) {
    cp6.hide();
    modal.hide();
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
   description = modal.addTextfield("Goal Description")
     .setPosition(410,150)
     .setSize(200,50)
     .setFont(createFont("arial",20))
     ;
 
     
  mileStone = modal.addTextfield("Milestone")
     .setPosition(410,250)
     .setSize(200,50)
     .setFont(createFont("arial",20))
     ;
   
  endDate = modal.addTextfield("End Date")
     .setPosition(410,350)
     .setSize(200,50)
     .setFont(createFont("arial",20))
     ;
  modal.addBang("AddMilestone")
     .setPosition(620,250)
     .setSize(70,30)
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER)
     ;  
  modal.addBang("UPLOAD")
     .setPosition(410,450)
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
    fill(6, 64, 155);
    fill(208, 196, 237);
    rect(0,0, width, height);
    fill(72, 140, 36);
    rect(60, 75, 300, 500);
    
    fill(0,0,0);
    if (system.modalIsOpen) {
      system.drawModal();
    }
    noStroke();
    system.goalSetting();
    fill(6, 64, 155);
    textSize(60);
    text("The Goalie", 400, 50);
  }
    
}

class System {
  HashMap<String, User> nameTouser;
  User currentUser;
  boolean modalIsOpen;
  System(){
    /*
    int[] white = {250, 250, 250};
    int[] grey = {179,175,188};
    int[] darkPurple = {158,122,242}; */
    this.nameTouser = new HashMap<String, User>();
    currentUser = null;
    this.modalIsOpen = false;
    
  }
  void signIn(){
    stroke(203, 185, 245);
    fill(203, 185, 245);
    rect(350, 100, 300, 400);
    profile.resize(170,180);
    image(profile, 410, 110);

    stroke(203, 185, 245);
  }
  void goalSetting() {
    getGoal();
    
}
  void drawModal() {
   if (this.modalIsOpen) {
     stroke(67, 66, 232);
     fill(72, 140, 36);
     rect(400, 100, 400, 400);
   }
  }
  void openModal() {
   modal.show();
   this.modalIsOpen = true;
 }

 
  void getGoal() {
    ArrayList<String> goals  = currentUser.goals;
    String goalBuffer = "";
     for (String goal: goals) {
       goalBuffer += goal + "\n";
     }
     fill(250, 250, 250);
     textSize(20);
     text(goalBuffer, 80, 120); 
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
   User user = system.nameTouser.get(system.currentUser.userName);
   user.goals.add(newGoal);
   system.openModal(); 
   system.modalIsOpen = true;
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
    modal.hide();
    goalTextField.clear();
    system.currentUser = new User(username, pwd, new ArrayList<String>());
    system.nameTouser.put(system.currentUser.userName, system.currentUser);
    mode = 1; 
    
   
  }
public void UPLOAD() {
  system.modalIsOpen = false;
  modal.hide();
  goalTextField.clear();
  
}

public void AddMilestone () {
  mileStone.clear();
}
public void input(String theText) {
  // automatically receives results from controller input
  println("a textfield event for controller 'input' : "+theText);
}