class Volgorde{
  ArrayList<Item> items = new ArrayList<Item>();
  int idx;
 
  Volgorde(){
    for (int i=0; i<14; i++) {
      items.add(new Item(50+i*70)); 
    } 
    idx = 1;
  }
  
  void display(){
    rectMode(CENTER);
    strokeWeight(2);
    for (int i=0; i<13; i++){items.get(i).display();} 
    items.get(0).setValue(raster.vakjes.get(0));
  }
  
  void setNext(Vakje v){
    if(idx < 13){
      items.get(idx).setValue(v);
      idx = idx + 1; 
    }
  }
  
  void undo(){
    message2 = "";
    if(idx > 1){
      items.get(idx-1).getValue().undo();
      items.get(idx-1).setValue(null);
      idx = idx - 1;
    }
  }
  
  void reset(){
    message2 = "";
    for (int i=idx; i>1; i--){undo();} 
  }
  
  void check(){
    String order = getOrder(); Boolean result;
    if(order.length() < 13){result=false;}
    else if(order.equals("ABCDEFGHIJKLA")){result=true;}
    else if(order.equals("AICKEGLDJBHFA")){result=true;}
    else if(order.equals("AFHBJDLGEKCIA")){result=true;}
    else if(order.equals("AGEKJDLFHBCIA")){result=true;}
    else if(order.equals("AICBHFLDJKEGA")){result=true;}
    else{result=false;}
    if(result){
      col = green;
      message2 = "Goed zo!\nDeze volgorde klopt.";
    }else{
      col = red;
      message2 = "Deze volgorde klopt niet...\nProbeer het nog een keer.";
    }
  }
  
  String getOrder(){
    String order = "";
    for (int i=0; i<idx; i++){
      order = order + items.get(i).vakje.getid();
    } 
    return order;
  }
}

class Item{
  float x; float y=460; float c=7; float s=50;
  Vakje vakje;
  
  Item(float x_in){
    x = x_in;
    col = white;
  }
  
  void display(){
    fill(col);
    rect(x,y,s,s,7); 
    if(vakje != null){
      image(vakje.getImage(),x,y,s-10,s-10);
    }
  }
  
  void setValue(Vakje v){
    vakje = v; 
  }
  
  Vakje getValue(){
    return vakje; 
  }
}