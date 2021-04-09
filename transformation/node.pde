class Node { 
  PFont f;
  color c;
  String name;
  float xpos;
  float ypos;
  float xspeed;
  float ofset = 1000;

  Node(float tempXpos, float tempYpos, String tempName, color tempC) { 
    c = tempC;
    name = tempName;
    xpos = tempXpos;
    ypos = tempYpos;
  }
  
  void display(){
    stroke(0);
    strokeWeight(1);
    fill(c);
    ellipseMode(CENTER);
    ellipse(xpos,ypos+ofset,30,30);
    textAlign(CENTER);
    f = createFont("Arial",16,true); 
    textFont(f,24);
    fill(255);
    text(name, xpos+ofset, ypos+8);    
  }

  void show(){
    ofset = 0;
  }
  
  void hide(){
    ofset = 1000;
  }
  
  void changeColor(color col){
    c = col;
  }
  
  float getx(){
    return xpos;
  }

  float gety(){
    return ypos;
  }
  
  void transpose(float x, float y){
    xpos = x;
    ypos = y;
    updateEdges();
  }

  void drive() {
    xpos = xpos + 1;
    if (xpos > width) {
      xpos = 0;
    }
  }
}