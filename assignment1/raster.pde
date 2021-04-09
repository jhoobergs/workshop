class Raster {
  color c = grey;
  ArrayList<Vakje> vakjes = new ArrayList<Vakje>();
  
  Raster(){
    vakjes.add(new Vakje(160,80,im1,"A"));
    vakjes.add(new Vakje(240,80,im2,"B"));
    vakjes.add(new Vakje(80,160,im3,"C"));
    vakjes.add(new Vakje(160,160,im4,"D"));
    vakjes.add(new Vakje(240,160,im5,"E"));
    vakjes.add(new Vakje(320,160,im6,"F"));
    vakjes.add(new Vakje(80,240,im7,"G"));
    vakjes.add(new Vakje(160,240,im8,"H"));
    vakjes.add(new Vakje(240,240,im9,"I"));
    vakjes.add(new Vakje(320,240,im10,"J"));
    vakjes.add(new Vakje(160,320,im11,"K"));
    vakjes.add(new Vakje(240,320,im12,"L"));
  }
  
  void display(){
    for (int i = 0; i < vakjes.size(); i++) {
      vakjes.get(i).display();
    } 
  }
  
  void update(){
    for (int i = 0; i < vakjes.size(); i++) {
      vakjes.get(i).hover();
    }      
  }
  
  void clicked(){
    for (int i = 0; i < vakjes.size(); i++) {
      vakjes.get(i).clicked();
      col = white;
    }         
  }
  
}