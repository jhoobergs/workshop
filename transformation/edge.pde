class Edge{
  Node n1; Node n2;
  float x1; float x2;
  float y1; float y2;
  float ofset = 1000;
  color c;
  
  Edge(Node node1, Node node2, color col){
    c = col;
    x1 = node1.getx();
    x2 = node2.getx();
    y1 = node1.gety();
    y2 = node2.gety();
    n1 = node1;
    n2 = node2;
  }
  
  void display() {
    stroke(10);
    strokeWeight(4);
    fill(c);
    line(x1+ofset,y1,x2+ofset,y2);
  }
  
  void show(){
    ofset = 0;
  }

  void hide(){
    ofset = 1000;
  }
  
  void update(){
    x1 = n1.getx();
    x2 = n2.getx();
    y1 = n1.gety();
    y2 = n2.gety();    
  }
  
}