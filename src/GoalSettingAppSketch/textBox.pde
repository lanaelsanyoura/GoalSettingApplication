class TextBox {
  int x;
  int y;
  int w;
  int h;
  String text; 
  int[] colour; 
  int textsize;
  int[] textColour;
  boolean selected;
  int[] selectedStroke;
  int[] defaultStroke;
  
  TextBox(int x, int y, int w, int h, String text, int[] colour, int[] textColour, int textsize, boolean selected, int[] selectedStroke,int[] defaultStroke) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.text = text;
    this.colour = colour;
    this.textsize = textsize;
    this.textColour = textColour;
    this.selected = selected;
    this.selectedStroke = selectedStroke;
    this.defaultStroke = defaultStroke;
  }
    void drawRect() {
      strokeWeight(2);
      if  ((this.x <= mouseX) && (mouseX <= this.x + this.w) && (this.y <= mouseY) && (mouseY <= this.y + this.h)) {
        stroke(this.selectedStroke[0], this.selectedStroke[1], this.selectedStroke[2]);
        this.selected = true;        
     }
      else {
       stroke(this.defaultStroke[0], this.defaultStroke[1], this.defaultStroke[2]);
      }
      fill(this.colour[0], this.colour[1], this.colour[2]);
      rect(x, y, w, h);
      fill(this.textColour[0], this.textColour[1], this.textColour[2]);
      textSize(this.textsize);
      text(this.text, x,y + 25);
  }

}
}