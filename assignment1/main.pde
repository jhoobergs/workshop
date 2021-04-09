color grey = color(75,75,75);
color lgrey = #dddddd;
color red = #ff595e;
color white = color(255,255,255);
color green = #8ac926;
color blue = #1982c4;
color col; //Colors green/red when a solution is checked
PFont f;
String message1; String message2;
String root = "/emoji/";
PImage im1; PImage im2; PImage im3; PImage im4; PImage im5; PImage im6; PImage im7; PImage im8; PImage im9; PImage im10; PImage im11; PImage im12;

Raster raster; 
Volgorde volgorde;
Button back; Button reset; Button test;
int pogingen;

void setup() {
  size(950,570);
  f = createFont("AppleColorEmoji",13,true);

  loadImages();
  raster = new Raster();
  volgorde = new Volgorde();
  back = new Button(25,520,190,"Ongedaan maken");
  reset = new Button(235,520,190,"Begin opnieuw");
  test = new Button(725,520,190,"Kijk na");
  
  message1 = "Klik op een vakje om het toe te voegen\naan de volgorde."; 
  message2 = "";
  pogingen = 0; 
}

void draw() {
  background(255); 
  
  volgorde.display();
  raster.display(); 
  
  back.display();
  reset.display();
  test.display();
  
  textAlign(CENTER);
  textFont(f,20);
  fill(0);
  text(message1 + "\n \n" + message2, 650, 140);
}

void mouseMoved() {
  raster.update();
  back.hover();
  reset.hover();
  test.hover();
}

void mouseClicked() {
  raster.clicked();
  
  if(back.clicked()){volgorde.undo(); col=white;}
  if(reset.clicked()){volgorde.reset(); col=white;}
  if(test.clicked()){volgorde.check(); pogingen++;}
}

void loadImages(){
    im1 = loadImage((root + "emoji_u1f434.png"), "png");
    im2 = loadImage((root + "emoji_u1f347.png"), "png");
    im3 = loadImage((root + "emoji_u1f352.png"), "png");
    im4 = loadImage((root + "emoji_u1f349.png"), "png");
    im5 = loadImage((root + "emoji_u1f34c.png"), "png");
    im6 = loadImage((root + "emoji_u1f345.png"), "png");
    im7 = loadImage((root + "emoji_u1f955.png"), "png");
    im8 = loadImage((root + "emoji_u1f34d.png"), "png");
    im9 = loadImage((root + "emoji_u1f34f.png"), "png");
    im10 = loadImage((root + "emoji_u1f33d.png"), "png");
    im11 = loadImage((root + "emoji_u1f353.png"), "png");
    im12 = loadImage((root + "emoji_u1f4a7.png"), "png");
}
