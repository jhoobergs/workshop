class Node{
  float xpos; float ypos; float s;
  PImage ima;
  color c;
  String id;

  Node(float x, float y, PImage ima_in, String id_in){
    xpos = x; ypos = y;
    ima = ima_in;
    id = id_in;
    c = white;
    s = 40;
  }
  
  void display(){
    ellipseMode(CENTER);
    imageMode(CENTER);
    strokeWeight(3);
    fill(c);
    ellipse(xpos,ypos,60,60); 
    image(ima,xpos,ypos,s,s);
  }
  
  void hover(){
    if(mouseX>xpos-30 && mouseX<xpos+30 && mouseY>ypos-30 && mouseY<ypos+30){
      c = lgrey;
      s = 47;
    }else{
      s = 40;
      c = white;
    }
  }
  
  void clicked(){
    if(mouseX>xpos-30 && mouseX<xpos+30 && mouseY>ypos-30 && mouseY<ypos+30){
      volgorde.setNext(this);
      s = 40;
    }
  }
  
  String getid(){
    return id; 
  }
  
  PImage getImage(){return ima;}
}