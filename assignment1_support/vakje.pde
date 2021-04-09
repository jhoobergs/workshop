class Vakje {
  float xpos; float ypos; float s;
  PImage ima;
  color c;
  String id;
  boolean used;
   
  Vakje(float x, float y, PImage im, String sid){
    xpos = x;
    ypos = y;
    ima = im;
    id = sid;
    c = white;
    s = 40;
    used = false;
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
    if(mouseX>xpos-40 && mouseX<xpos+40 && mouseY>ypos-40 && mouseY<ypos+40 && used==false){
      c = lgrey;
      s = 60;
    }else{
      s = 40;
      if(used){c=grey;}
      else{c=white;}
    }
  }
  
  void clicked(){
    if(mouseX>xpos-40 && mouseX<xpos+40 && mouseY>ypos-40 && mouseY<ypos+40 && used==false){
      volgorde.setNext(this);
      used = true;
      c = grey;
      s = 40;
    }
  }
  
  void undo(){
    used = false;
    c = white;
  }
  
  String getid(){
    return id; 
  }
  
  PImage getImage(){return ima;}
}