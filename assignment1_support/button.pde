class Button {
  float xpos; float ypos; float w; float h=30; 
  String txt;
  color c; 
 
  Button(float x, float y, float wi, String t){
    xpos = x;
    ypos = y;
    txt = t;
    w = wi;
    c = blue;
  }
  
  void display(){
    rectMode(CENTER);
    strokeWeight(2);
    fill(c);
    rect(xpos+(w/2),ypos+(h/2),w,h,7); 
    textAlign(CENTER);
    textFont(f,20);
    fill(255);
    text(txt, xpos+(w/2), ypos+7+(h/2));
  }
  
  void hover(){
    if(mouseX>xpos && mouseX<xpos+w && mouseY>ypos && mouseY<ypos+h) {
      c = grey;
    }else{
      c = blue;
    }
  }
  
  boolean clicked(){
    if(mouseX>xpos && mouseX<xpos+w && mouseY>ypos && mouseY<ypos+h) {return true;}
    else{return false;}
  }
  
}