Particle [] carl;
void setup()
{
  carl = new Particle[300];
  for(int i = 0; i < carl.length; i = i + 1) {
    carl[i] = new Particle();
  }
  carl[0] = new OddballParticle();
  size(500, 500);
}
void draw()
{
  background(0);
  fill(0);
  for(int i = 0; i < carl.length; i = i + 1) {
    carl[i].move();
    carl[i].show();
  }
}
class Particle
{
  double myX, myY, myAngle, mySpeed, mySize;
  int myColor;

  Particle() {
    mySize = Math.random() * 2;
    myX = myY = 200;
    myAngle = Math.random() * (2 * Math.PI);
    mySpeed = (Math.random() * 10) ;
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 150) + 50);
  }
  void move() {
    myX = myX + (Math.cos(myAngle) * mySpeed);
    myY = myY + (Math.sin(myAngle) * mySpeed);
    mySize = mySize + 0.04;

   if(myX > 500 || myX < 0 || myY > 500 || myY < 0) {
      mySize = Math.random() * 5;
      myX = myY = 300;
      myAngle = Math.random() * (2 * Math.PI);
      mySpeed = Math.random() * 15;
      myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 150) + 50);    
   }
    
  }
  void show() {
    fill(myColor);
    noStroke();
    ellipseMode(CENTER);
    ellipse((float)myX, (float)myY, (float)mySize, (float)mySize);
  }
}
 
class OddballParticle extends Particle
{
  OddballParticle() {
  }
  void move() {
    myX = myX + (int)(Math.random() * 5) - 2;
    myY = myY + (int)(Math.random() * 5) - 2;
  }
  void show() {
    noStroke();
    fill(250,250,250);
    rect((float)myX, (float)myY, 50, 50);
  }


}
