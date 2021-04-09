class Vakje {
  float xpos; float ypos; float s;
  PImage ima;
  color c;
  String id;
   
  Vakje(float x, float y, PImage im, String sid){
    xpos = x;
    ypos = y;
    ima = im;
    id = sid;
    c = white;
    s = 40;
  }
  
  void display(){
    rectMode(CENTER);
    imageMode(CENTER);
    strokeWeight(4);
    fill(c);
    rect(xpos,ypos,80,80); 
    image(ima,xpos,ypos,s,s);
  }
  
  void hover(){
    if(mouseX>xpos-40 && mouseX<xpos+40 && mouseY>ypos-40 && mouseY<ypos+40){
      c = lgrey;
      s = 60;
    }else{
      c = white;
      s = 40;
    }
  }
  
  void clicked(){
    if(mouseX>xpos-40 && mouseX<xpos+40 && mouseY>ypos-40 && mouseY<ypos+40){
      volgorde.setNext(this);
    }
  }
  
  String getid(){
    return id; 
  }
  
  PImage getImage(){return ima;}
}