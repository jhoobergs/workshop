color grey = color(75,75,75);
color red = #1982c4;
String root = "/emoji/";

ArrayList<Node> nodes = new ArrayList<Node>();
ArrayList<Edge> edges = new ArrayList<Edge>();
Raster raster; 

Slider slider;

void setup() {
  size(960,500);
  // BE SURE TO LOAD ALL (WEB)IMAGES HERE!
  
  makeNodes();
  makeEdges();
  slider = new Slider(100,440,760);
  raster = new Raster();
}

void draw() {
  background(255);
  
  // DISPLAY NODES AND EDGES (with ofset)
  for (int i = 0; i < edges.size(); i++) {edges.get(i).display();}
  for (int i = 0; i < nodes.size(); i++) {nodes.get(i).display();}
  
  slider.display();  
  
  raster.display(); 
}

void mouseMoved() {
  slider.update(mouseX, mouseY);
  
  // VANAF 50: Toon knopen
  if(slider.getXrel()>=50){toonKnopen();}
  else{verbergKnopen();}
  
  // VANAF 100: Verberg knight's tour
  if(slider.getXrel()<50){raster.showSymbols();}
  else{raster.hideSymbols();}
  if(slider.getXrel()<100){raster.showRaster();}
  else{raster.hideRaster();}
  
  // VANAF 150: Toon evolutie bogen
  bouwEdges();

  // VANAF 210: Verplaats knopen
  verplaatsKnopen(); 
}
