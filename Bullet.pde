class Bullet extends Floater {
  
  public Bullet (Spaceship MHT) {
    myCenterX = MHT.getX();
    myCenterY = MHT.getY();
    myXspeed = MHT.getmyXspeed();
    myYspeed = MHT.getmyYspeed();
    myPointDirection = MHT.getPointDirection();
    accelerate(.5);
  }
  
  public void show(){
    noStroke();
    fill(225, 0, 0);
    ellipse((float)myCenterX, (float)myCenterY, 10, 5);
  }
  
  public void move(){
     myCenterX += myXspeed;    
    myCenterY += myYspeed;
    super.accelerate(0.1);
  }
   
  
  public double getCenterX(){return myCenterX;}
  
  public double getCenterY(){return myCenterY;}
}
