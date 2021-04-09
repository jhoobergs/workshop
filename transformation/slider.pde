class Slider{
  float place_x;
  float place_y;
  float w;
  float x;
  color c = color(75,75,75);
  String boodschap;
  PFont f;
  
  Slider(float px, float py, float wi){
    place_x = px;
    place_y = py;
    w = wi;
    x = 0;
    updateText();
  }
  
  void display(){
    stroke(10);
    strokeWeight(4);
    fill(c);
    line(place_x,place_y,place_x+w,place_y);
    //line(place_x+50,place_y-5,place_x +50,place_y+5);
    stroke(0);
    strokeWeight(1);
    fill(c);
    ellipseMode(CENTER);
    ellipse(x+place_x,place_y,15,15);
    textAlign(CENTER);
    f = createFont("AppleColorEmoji",13,true); 
    textFont(f,20);
    fill(0);
    text(boodschap, place_x+(w/2), place_y + 35);
  }
  
  void update(float nx, float ny){
    if((place_y-25)<ny && ny<(place_y+25) && place_x<nx && nx<(place_x+w)){
      x = nx - place_x; 
      updateText();
    }
  }
  
  float getXabs(){
    return x + place_x; 
  }
  
  float getXrel(){
    return x;
  }
  
  void updateText(){
    if(x<50){boodschap = "Beweeg met je muis over de slider";}
    if(x>50 && x<100){boodschap = "Vervang de symbolen door letters";}
    if(x>100 && x<150){boodschap = "Verberg het raster";}
    if(x>150 && x<350){boodschap = "Bekijk elke letter en trek een lijn naar elke andere letter waar je naar toe kan";}
    if(x>350 && x<730){boodschap = "Herschik de letters zodat de lijnen niet (of zo weinig mogelijk) kruisen";}
    if(x>730 && x<w){boodschap = "Doet dit je aan iets denken?";}
  }
  
}