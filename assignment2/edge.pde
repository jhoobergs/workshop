class Edge{
  Node n1; Node n2;
  float x1; float x2;
  float y1; float y2;
  
  Edge(Node node1, Node node2){
    x1 = node1.xpos;
    x2 = node2.xpos;
    y1 = node1.ypos;
    y2 = node2.ypos;
    n1 = node1;
    n2 = node2;
  }
  
  void display() {
    stroke(10);
    strokeWeight(4);
    fill(255);
    line(x1,y1,x2,y2);
  }
  
}