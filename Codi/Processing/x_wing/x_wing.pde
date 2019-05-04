void setup() {
  size(600, 600);
  background(23,23,53);
  smooth();
  noLoop();
  
  for(int i = 0; i < 200; i++) {
    PVector pos = new PVector(random(width), random(height));
    float radious = map(pow(random(1), 3), 0, 1, 1, 5);
    boolean isBlue = random(1) < 0.5;
    new Star(pos, radious, isBlue).display();
  }
  
  fill(200);
  stroke(10);
  strokeWeight(2);
  
  quad(330, 350, 530, 350, 530, 465, 330, 500);
  rect(342, 300, 60, 250);
  strokeWeight(6);
  line(450, 430, 450, 470);
  stroke(200);
  line(555, 180, 555, 510);
  line(545, 190, 565, 190);
  stroke(10);
  strokeWeight(2);
  rect(530, 300, 50, 200);
  
  
  quad(270, 350, 70, 350, 70, 465, 270, 500);
  rect(198, 300, 60, 250);
  strokeWeight(6);
  line(150, 430, 150, 470);
  stroke(200);
  line(45, 180, 45, 510);
  line(35, 190, 55, 190);
  stroke(10);
  strokeWeight(2);
  rect(20, 300, 50, 200);
  
  rect(260, 340, 80, 180);
  fill(240);
  strokeWeight(1);
  circle(300, 370, 36);
  fill(255);
  strokeWeight(0);
  circle(300, 370, 24);
  fill(200);
  strokeWeight(4);
  line(300, 400, 300, 500);
  strokeWeight(2);
  
  quad(270, 100, 325, 100, 340, 340, 260, 340);
  quad(280, 30, 315, 30, 325, 100, 270, 100);
  
  fill(80);
  beginShape();
   vertex(290, 225);
   vertex(310, 225);
   vertex(320, 290);
   vertex(310, 330);
   vertex(290, 330);
   vertex(280, 290);
   vertex(290, 225);
  endShape();  
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
    colorMode(HSB, 360, 100, 100, 100);
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
