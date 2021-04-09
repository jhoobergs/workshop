class Raster { 
  float ofset1; float ofset2;
  color c = grey;
  PImage im1; PImage im2; PImage im3; PImage im4; PImage im5; PImage im6; PImage im7; PImage im8; PImage im9; PImage im10; PImage im11; PImage im12;
  
  Raster(){
    ofset1 = 1000;
    ofset2 = 1000;
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
  
  void display(){
    // LINES
    stroke(10);
    strokeWeight(4);
    fill(c);
      // Horizontal
      line(120+ofset1,40,280+ofset1,40);
      line(40+ofset1,120,360+ofset1,120);
      line(40+ofset1,200,360+ofset1,200);
      line(40+ofset1,280,360+ofset1,280);
      line(120+ofset1,360,280+ofset1,360);
      // Vertical
      line(40+ofset1,120,40+ofset1,280);
      line(120+ofset1,40,120+ofset1,360);
      line(200+ofset1,40,200+ofset1,360);
      line(280+ofset1,40,280+ofset1,360);
      line(360+ofset1,120,360+ofset1,280);
    // IMAGES
    imageMode(CENTER);
    int s = 40;
      image(im1,160+ofset2,80,s,s);
      image(im2,240+ofset2,80,s,s);
      image(im3,80+ofset2,160,s,s);
      image(im4,160+ofset2,160,s,s);
      image(im5,240+ofset2,160,s,s);
      image(im6,320+ofset2,160,s,s);
      image(im7,80+ofset2,240,s,s);
      image(im8,160+ofset2,240,s,s);
      image(im9,240+ofset2,240,s,s);
      image(im10,320+ofset2,240,s,s);
      image(im11,160+ofset2,320,s,s);
      image(im12,240+ofset2,320,s,s);
  }
  
  void showRaster(){
    ofset1 = 0; 
  }
  
  void hideRaster(){
    ofset1 = 1000; 
  }
  
  void showSymbols(){
    ofset2 = 0;
  }
  
  void hideSymbols(){
    ofset2 = 1000;
  }
  
}