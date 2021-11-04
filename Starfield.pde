//your code here
void setup()
{
	//your code here
}
void draw()
{
	//your code here
}
class Particle
{
	//your code here
}

class OddballParticle //inherits from Particle
{
	//your code here
}


class Particle {
  double myX, myY, myAngle, mySize, mySpeed;
  int myColor;
  Particle () {
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myX = (int)(Math.random()*300);
    myY = (int)(Math.random()*300);
    mySize = 6.5;
    myAngle = (double)(Math.random()*2*Math.PI);
    mySpeed = (double)(Math.random()*10);
  } 

void move () {
 myX = myX + (int)(Math.random()*10)-2;
 myY = myY + (int)(Math.random()*10)-6;
}

void show () {
  fill (myColor);
  ellipse ((float)myX, (float)myY, 5,5);

}

Particle [] carl = new Particle [5];
boolean start = false;
void setup() {
  size (500,500);
  for (int i = 0; i < carl.length; i++)
    carl [i] = new Particle ();
    carl [0] = new OddballParticle ();
  }


void draw() {
  background(233,212,247);
  int j = 0;
for (int i = 0; i<carl.length; i++) {
    carl[j].move();
    carl[j].show();
  }
}


class OddballParticle extends Particle
{
  OddBallParticle()
  {
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myX = (int)(Math.random()*300);
    myY = (int)(Math.random()*300);
    mySize = 6.5;
    myAngle = (double)(Math.random()*2*Math.PI);
    mySpeed = (double)(Math.random()*10);
  }
  void move()
  {
  }
  void show()
  {
  }
}
}

11/4

class Particle {
  double myX, myY, myAngle, mySize, mySpeed;
  int myColor;
  Particle () {
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myX = (int)(Math.random()*300);
    myY = (int)(Math.random()*300);
    mySize = 6.5;
    myAngle = (double)(Math.random()*2*Math.PI);
    mySpeed = (double)(Math.random()*10);
  } 

void move () {
// myX = myX + (int)(Math.random()*10)-2;
 //myY = myY + (int)(Math.random()*10)-6;
     myX = myX + mySpeed;
    myY = myY + mySpeed;
    if (myX >= 300) {
      myX = -150;
    }
}

void show () {
  fill (myColor);
  ellipse ((float)myX, (float)myY, 5,5);

}

Particle [] carl;
void setup() 
{
  size (500,500);
  carl = new Particle [100];
  for (int i = 0; i < 10; i++){
    carl[i] = new Particle ();
  for (int j = 10; j< carl.length; j++) {
    carl[j] = new OddballParticle ();
  }
}
}


void draw() {
  background(233,212,247);
for (int i = 0; i<carl.length; i++) {
    carl[i].move();
    carl[i].show();
  }
}


class OddballParticle extends Particle
{
  OddBallParticle()
  {
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myX = (int)(Math.random()*300);
    myY = (int)(Math.random()*300);
    mySize = 6.5;
    myAngle = (double)(Math.random()*2*Math.PI);
    mySpeed = (double)(Math.random()*10);
  }


}
}
