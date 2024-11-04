class OddballParticle extends Particle{
  OddballParticle(){
    myX = Math.random()*400;
    myY = Math.random()*400;
    myColor = 255;
    mySize = 20;
    myAngle = (Math.random()*2.01) * Math.PI;
    mySpeed = 1;
  }
  void move(){
    if(Math.random()*1 < .5){
    myX = myX + Math.random()*5;
    myY = myY + Math.random()*5;
    }else{
    myX = myX + (Math.random()*5)-5;
    myY = myY + (Math.random()*5)-5;
    }
  }
}

Particle [] bob = new Particle[1500];
void setup(){
  size(500,500);
  for(int i = 0; i < bob.length; i++){
    bob[i] = new Particle();
    bob[0] = new OddballParticle();
    bob[1]= new OddballParticle();
  }
 
}

void draw(){
  background(0);
  noStroke();
  for(int i = 0; i < bob.length; i++){
   bob[i].show();
   bob[i].move();
  }


}

class Particle{
  int myColor,mySize;
  double myAngle, myX, myY,mySpeed;
  
  Particle(){
    myX = 250;
    myY = 250;
    mySize = 3;
    myColor = color(((int)(Math.random()*255)+1),((int)(Math.random()*255)+1),((int)(Math.random()*255)+1));
    myAngle = (Math.random()*2.01) * Math.PI;
    mySpeed = (Math.random()*4);
  }
  
  void move(){
    myX = myX + Math.cos(myAngle)* mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }
  
  void show(){
    fill(myColor);
    ellipse((float)myX,(float)myY,mySize,mySize);
  }
  
  
}//end of bacteria class
