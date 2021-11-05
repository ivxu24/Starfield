
Particle [] carl;
void setup() 
{
  size (500,500);
  carl = new Particle [100];
  for (int i = 0; i < carl.length; i++){
    carl[i] = new Particle ();
    carl[0] = new OddballParticle ();
  }
}
}

class Particle {
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle () {
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myX = 250;
    myY = 250;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random() *16;
  } 

void move () {
// myX = Math.cos(myAngle)*mySpeed; 
 //myY = Math.sin(myAngle)*mySpeed; 
    }
}

void show () {
  fill (myColor);
  ellipse ((float)myX, (float)myY, 5,5);

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
    myX = 280;
    myY = 280;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random() *16;
  } 

  }
}

void show () {
  fill (myColor);
  ellipse ((float)myX, (float)myY, 50,50);

}
}
}
