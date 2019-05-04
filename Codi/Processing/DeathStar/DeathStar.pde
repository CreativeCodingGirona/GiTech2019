void setup() {
  size(600, 600);
  background(23,23,53);
  
  smooth();
  noLoop();
  
  colorMode(HSB, 360, 100, 100, 100);
  for(int i = 0; i < 200; i++){
    PVector pos = new PVector(random(width), random(height));
    float radious = map(pow(random(1), 3), 0, 1, 1, 5);
    boolean isBlue = random(1) < 0.5;
    new Star(pos, radious, isBlue).display();
  }
  
  
  stroke(300);
  strokeWeight(8);
  
  fill(120);
  circle(300, 300, 500);
  
  strokeWeight(12);
  strokeCap(SQUARE);
  line(50, 300, 550, 300);
  
  strokeCap(ROUND);
  strokeWeight(5);
  
  fill(0,20);
  circle(220, 190, 120);
  
  fill(0,30);
  circle(220, 190, 50);
  
  line(360, 110, 460, 110);
  line(405, 180, 435, 180);
  line(450, 180, 518, 180);
  line(470, 240, 542, 240);
  line(490, 350, 444, 350);
  line(410, 410, 428, 410);
  line(458, 410, 520, 410);
  line(370, 470, 485, 470);
  line(330, 510, 360, 510); 
}


class Star{
  
  PVector pos;
  float radious;
  boolean isBlue;
  
  Star(PVector pos, float radious, boolean isBlue){
    this.pos = pos;
    this.radious = radious;
    this.isBlue = isBlue;
  }
  
  void display(){
    noStroke();
    float hue = isBlue ? 270 : 160;
    for(float s = 1.0; s >= 0.0; s -= 0.01){
      float saturation = map(pow(s, 10), 0, 1, 0, 100);
      fill(hue, saturation, 100, 30);
      float r = map(s, 0, 1, 0, radious);
      ellipse(pos.x, pos.y, r, r);
    }
  }
  
}
