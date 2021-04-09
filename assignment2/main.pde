color grey = color(75,75,75);
color lgrey = #dddddd;
color red = #ff595e;
color white = color(255,255,255);
color green = #8ac926;
color blue = #1982c4;
color col; //Colors green/red when a solution is checked
PFont f;
String message1; String message2;
String root = "../emoji/";
PImage im1; PImage im2; PImage im3; PImage im4; PImage im5; PImage im6; PImage im7; PImage im8; PImage im9; PImage im10; PImage im11; PImage im12;

Stadsgids gids; 
Volgorde volgorde;
Button back; Button reset; Button test;
int pogingen;

void setup() {
  size(950,570);
  f = createFont("AppleColorEmoji",13,true);

  loadImages();
  gids = new Stadsgids();
  volgorde = new Volgorde();
  back = new Button(25,520,190,"Ongedaan maken");
  reset = new Button(235,520,190,"Begin opnieuw");
  test = new Button(725,520,190,"Kijk na");
  
  message1 = "Klik op een bezienswaardigheid \nom het toe te voegen \naan de volgorde."; 
  message2 = "";
  pogingen = 0; 
}

void draw() {
  background(255); 
  
  volgorde.display();
  gids.display(); 
  
  back.display();
  reset.display();
  test.display();
  
  textAlign(CENTER);
  textFont(f,20);
  fill(0);
  text(message1 + "\n \n" + message2, 750, 100);
}

void mouseMoved() {
  gids.update();
  back.hover();
  reset.hover();
  test.hover();
}

void mouseClicked() {
  gids.clicked();
  
  if(back.clicked()){volgorde.undo(); col=white;}
  if(reset.clicked()){volgorde.reset(); col=white;}
  if(test.clicked()){volgorde.check(); pogingen++;}
}

void loadImages(){    
    im1 = loadImage((root + "emoji_u1f3e8.png"), "png");
    im2 = loadImage((root + "emoji_u1f54c.png"), "png");
    im3 = loadImage((root + "emoji_u1f3ad.png"), "png");
    im4 = loadImage((root + "emoji_u26ea.png"), "png");
    im5 = loadImage((root + "emoji_u1f3d6.png"), "png");
    im6 = loadImage((root + "emoji_u1f3df.png"), "png");
    im7 = loadImage((root + "emoji_u1f69d.png"), "png");
    im8 = loadImage((root + "emoji_u1f3f0.png"), "png");
    im9 = loadImage((root + "emoji_u1f5fd.png"), "png");
    im10 = loadImage((root + "emoji_u1f5ff.png"), "png");
    im11 = loadImage((root + "emoji_u1f6a1.png"), "png");
    im12 = loadImage((root + "emoji_u26f2.png"), "png");
}
