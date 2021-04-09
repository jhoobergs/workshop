class Stadsgids {
  color c = grey;
  ArrayList<Node> nodes = new ArrayList<Node>();
  ArrayList<Edge> edges = new ArrayList<Edge>();
  
  Stadsgids(){
    nodes.add(new Node(240,60,im1,"A"));
    nodes.add(new Node(395,210,im2,"B"));
    nodes.add(new Node(500,210,im3,"C"));
    nodes.add(new Node(240,270,im4,"D"));
    nodes.add(new Node(240,360,im5,"E"));
    nodes.add(new Node(240,150,im6,"F"));
    nodes.add(new Node(60,210,im7,"G"));
    nodes.add(new Node(320,150,im8,"H"));
    nodes.add(new Node(320,60,im9,"I"));
    nodes.add(new Node(320,270,im10,"J"));
    nodes.add(new Node(320,360,im11,"K"));
    nodes.add(new Node(165,210,im12,"L"));
    edges.add(new Edge(nodes.get(0), nodes.get(6))); //0
    edges.add(new Edge(nodes.get(0), nodes.get(8))); //1
    edges.add(new Edge(nodes.get(0), nodes.get(5))); //2
    edges.add(new Edge(nodes.get(1), nodes.get(2))); //3
    edges.add(new Edge(nodes.get(1), nodes.get(7))); //4
    edges.add(new Edge(nodes.get(1), nodes.get(9))); //5
    edges.add(new Edge(nodes.get(2), nodes.get(8))); //6
    edges.add(new Edge(nodes.get(2), nodes.get(10))); //7
    edges.add(new Edge(nodes.get(6), nodes.get(4))); //8
    edges.add(new Edge(nodes.get(6), nodes.get(11))); //9
    edges.add(new Edge(nodes.get(5), nodes.get(7))); //10
    edges.add(new Edge(nodes.get(5), nodes.get(11))); //11
    edges.add(new Edge(nodes.get(9), nodes.get(3))); //12
    edges.add(new Edge(nodes.get(9), nodes.get(10))); //13
    edges.add(new Edge(nodes.get(10), nodes.get(4))); //14
    edges.add(new Edge(nodes.get(11), nodes.get(3))); //15
  }
  
  void display(){
    for (int i = 0; i < edges.size(); i++) {
      edges.get(i).display();
    } for (int i = 0; i < nodes.size(); i++) {
      nodes.get(i).display();
    } 
  }
  
  void update(){
    for (int i = 0; i < nodes.size(); i++) {
      nodes.get(i).hover();
    }      
  }
  
  void clicked(){
    for (int i = 0; i < nodes.size(); i++) {
      nodes.get(i).clicked();
      col = white;
    }         
  }
  
}