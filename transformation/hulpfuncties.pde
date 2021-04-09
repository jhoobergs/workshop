void bouwEdges(){
  float start = 150;
  float interval = 15;
  
  if(slider.getXrel()>start){
    nodes.get(0).changeColor(red);
    for (int i=0; i<3; i++) {edges.get(i).show();} 
  }else{
    nodes.get(0).changeColor(grey);
    for (int i=0; i<3; i++) {edges.get(i).hide();}
  } 
  
  start = start+interval;
  if(slider.getXrel()>start){
    nodes.get(0).changeColor(grey);
    nodes.get(1).changeColor(red);
    for (int i=3; i<6; i++) {edges.get(i).show();} 
  }else{
    nodes.get(1).changeColor(grey);
    for (int i=3; i<6; i++) {edges.get(i).hide();} 
  }  
  
  start = start+interval;
  if(slider.getXrel()>start){
    nodes.get(1).changeColor(grey);
    nodes.get(2).changeColor(red);
    for (int i=6; i<8; i++) {edges.get(i).show();} 
  }else{
    nodes.get(2).changeColor(grey);
    for (int i=6; i<8; i++) {edges.get(i).hide();} 
  } 
  
  start = start+interval;
  if(slider.getXrel()>start){
    nodes.get(2).changeColor(grey);
    nodes.get(3).changeColor(red);
    edges.get(12).show(); edges.get(15).show();
  }else{
    nodes.get(3).changeColor(grey);
    edges.get(12).hide();edges.get(15).hide();
  } 

  start = start+interval;
  if(slider.getXrel()>start){
    nodes.get(3).changeColor(grey);
    nodes.get(4).changeColor(red);
    edges.get(8).show(); edges.get(14).show();
  }else{
    nodes.get(4).changeColor(grey);
    edges.get(8).hide();edges.get(14).hide();
  } 

  start = start+interval;
  if(slider.getXrel()>start){
    nodes.get(4).changeColor(grey);
    nodes.get(5).changeColor(red);
    edges.get(10).show(); edges.get(11).show();
  }else{
    nodes.get(5).changeColor(grey);
    edges.get(10).hide();edges.get(11).hide();
  } 

  start = start+interval;
  if(slider.getXrel()>start){
    nodes.get(5).changeColor(grey);
    nodes.get(6).changeColor(red);
    edges.get(9).show();
  }else{
    nodes.get(6).changeColor(grey);
    edges.get(9).hide();
  } 
  
  start = start+interval;
  if(slider.getXrel()>start){
    nodes.get(6).changeColor(grey);
    nodes.get(7).changeColor(red);
  }else{
    nodes.get(7).changeColor(grey);
  } 
  
  start = start+interval;
  if(slider.getXrel()>start){
    nodes.get(7).changeColor(grey);
    nodes.get(8).changeColor(red);
  }else{
    nodes.get(8).changeColor(grey);
  }
  
  start = start+interval;
  if(slider.getXrel()>start){
    nodes.get(8).changeColor(grey);
    nodes.get(9).changeColor(red);
    edges.get(13).show();
  }else{
    nodes.get(9).changeColor(grey);
    edges.get(13).hide();
  }
  
  start = start+interval;
  if(slider.getXrel()>start){
    nodes.get(9).changeColor(grey);
    nodes.get(10).changeColor(red);
  }else{
    nodes.get(10).changeColor(grey);
  }
  
  start = start+interval;
  if(slider.getXrel()>start){
    nodes.get(10).changeColor(grey);
    nodes.get(11).changeColor(red);
  }else{
    nodes.get(11).changeColor(grey);
  } 
  
  start = start+interval;
  if(slider.getXrel()>start){
    nodes.get(11).changeColor(grey);
  }
}

void verplaatsKnopen(){
  float interval = 30;
  
  Node node = nodes.get(0); //A
  float oldX = 160; float oldY = 80;
  float difX = 480; float difY = 0;
  float start = 350; float stop = 380; float dif = stop-start;
  moveNode(node, oldX, oldY, difX, difY, start, stop, dif);
  
  node = nodes.get(8); //I
  oldX = 240; oldY = 240;
  difX = 480; difY = -160;
  start = stop; stop = start+interval; dif = stop-start;
  moveNode(node, oldX, oldY, difX, difY, start, stop, dif);  
  
  node = nodes.get(2); //C
  oldX = 80; oldY = 160;
  difX = 800; difY = 40;
  start = stop; stop = start+interval; dif = stop-start;
  moveNode(node, oldX, oldY, difX, difY, start, stop, dif);  
 
  node = nodes.get(1); //B
  oldX = 240; oldY = 80;
  difX = 555; difY = 120;
  start = stop; stop = start+interval; dif = stop-start;
  moveNode(node, oldX, oldY, difX, difY, start, stop, dif);    
  
  node = nodes.get(10); //K
  oldX = 160; oldY = 320;
  difX = 560; difY = 0;
  start = stop; stop = start+interval; dif = stop-start;
  moveNode(node, oldX, oldY, difX, difY, start, stop, dif);   
  
  node = nodes.get(9); //J
  oldX = 320; oldY = 240;
  difX = 400; difY = 10;
  start = stop; stop = start+interval; dif = stop-start;
  moveNode(node, oldX, oldY, difX, difY, start, stop, dif);   
  
  node = nodes.get(4); //E
  oldX = 240; oldY = 160;
  difX = 400; difY = 160;
  start = stop; stop = start+interval; dif = stop-start;
  moveNode(node, oldX, oldY, difX, difY, start, stop, dif);  
  
  node = nodes.get(3); //D
  oldX = 160; oldY = 160;
  difX = 480; difY = 90;
  start = stop; stop = start+interval; dif = stop-start;
  moveNode(node, oldX, oldY, difX, difY, start, stop, dif);  
  
  node = nodes.get(7); //H
  oldX = 160; oldY = 240;
  difX = 560; difY = -90;
  start = stop; stop = start+interval; dif = stop-start;
  moveNode(node, oldX, oldY, difX, difY, start, stop, dif);  

  node = nodes.get(5); //F
  oldX = 320; oldY = 160;
  difX = 320; difY = -10;
  start = stop; stop = start+interval; dif = stop-start;
  moveNode(node, oldX, oldY, difX, difY, start, stop, dif);  

  node = nodes.get(11); //L
  oldX = 240; oldY = 320;
  difX = 325; difY = -120;
  start = stop; stop = start+interval; dif = stop-start;
  moveNode(node, oldX, oldY, difX, difY, start, stop, dif);    
 
  node = nodes.get(6); //G
  oldX = 80; oldY = 240;
  difX = 400; difY = -40;
  start = stop; stop = start+interval; dif = stop-start;
  moveNode(node, oldX, oldY, difX, difY, start, stop, dif); 
}

void moveNode(Node node, float oldX, float oldY, float difX, float difY, float start, float stop, float dif){
  if(slider.getXrel()>start && slider.getXrel()<stop){
    float newX = oldX + ((((slider.getXrel()-start)/dif)*difX));
    float newY = oldY + ((((slider.getXrel()-start)/dif)*difY));
    node.transpose(newX,newY);
  }else if(slider.getXrel()>=stop){
    node.transpose(oldX+difX,oldY+difY);
  }else{
    node.transpose(oldX,oldY);
  }  
}

void toonKnopen(){
  for (int i = 0; i < nodes.size(); i++) {
    nodes.get(i).show();
  }
}

void verbergKnopen(){
  for (int i = 0; i < nodes.size(); i++) {
    nodes.get(i).hide();
  }
}

void updateEdges(){
  for (int i = 0; i < edges.size(); i++) {
    edges.get(i).update();
  }  
}

void makeNodes(){
  nodes.add(new Node(160,80,"A",grey)); 
  nodes.add(new Node(240,80,"B",grey));
  nodes.add(new Node(80,160,"C",grey));
  nodes.add(new Node(160,160,"D",grey));
  nodes.add(new Node(240,160,"E",grey));
  nodes.add(new Node(320,160,"F",grey));
  nodes.add(new Node(80,240,"G",grey));
  nodes.add(new Node(160,240,"H",grey));
  nodes.add(new Node(240,240,"I",grey));
  nodes.add(new Node(320,240,"J",grey));
  nodes.add(new Node(160,320,"K",grey));
  nodes.add(new Node(240,320,"L",grey));
}

void makeEdges(){
  edges.add(new Edge(nodes.get(0), nodes.get(6), grey)); //0
  edges.add(new Edge(nodes.get(0), nodes.get(8), grey)); //1
  edges.add(new Edge(nodes.get(0), nodes.get(5), grey)); //2
  edges.add(new Edge(nodes.get(1), nodes.get(2), grey)); //3
  edges.add(new Edge(nodes.get(1), nodes.get(7), grey)); //4
  edges.add(new Edge(nodes.get(1), nodes.get(9), grey)); //5
  edges.add(new Edge(nodes.get(2), nodes.get(8), grey)); //6
  edges.add(new Edge(nodes.get(2), nodes.get(10), grey)); //7
  edges.add(new Edge(nodes.get(6), nodes.get(4), grey)); //8
  edges.add(new Edge(nodes.get(6), nodes.get(11), grey)); //9
  edges.add(new Edge(nodes.get(5), nodes.get(7), grey)); //10
  edges.add(new Edge(nodes.get(5), nodes.get(11), grey)); //11
  edges.add(new Edge(nodes.get(9), nodes.get(3), grey)); //12
  edges.add(new Edge(nodes.get(9), nodes.get(10), grey)); //13
  edges.add(new Edge(nodes.get(10), nodes.get(4), grey)); //14
  edges.add(new Edge(nodes.get(11), nodes.get(3), grey)); //15
}