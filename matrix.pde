float angle;
float radius; 

void setup () {
  size (500, 500, P2D); 
  angle = 60; 
  radius = 150;
  //frameRate(80);
}


void draw () {
  background (20);
  
  int resolutionAngle = 360/10;
  for ( int j = 0; j<4; j++) {
    float newradius = radius + 25 * j; 
    for (int i = 0; i < resolutionAngle; i++) {
      angle = radians(i * 360/resolutionAngle + frameCount);
      float x = sin(angle) * newradius + width/2; 
      float y = cos(angle) * newradius + height/2; 
      pushMatrix();
      translate( x, y); 
      rotate (angle);
      rectMode(CENTER);
      rect(x, y, 20, 20);
      fill(160, 100, 5);
      ellipse(x, y, 10, 10);
      popMatrix();
    }
  }
}
