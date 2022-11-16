class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 3;
      xCorners = new int[corners];
      yCorners = new int[corners];
      xCorners[0] = -8;
      yCorners[0] = -8;
      xCorners[1] = 16;
      yCorners[1] = 0;
      xCorners[2] = -8;
      yCorners[2] = 8;
      myCenterX = 400;
      myCenterY = 400;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
      myColor = color(150,150,150);
    }
    public void setspeed(int h){
    myXspeed = myYspeed = h;
  }
  public void setStart(int c){
    myCenterX = myCenterY = c;
  }
  public float getX(){
    return((float)(myCenterX));
  }
  public float getY(){
    return((float)(myCenterY));
  }
  public double getPointDirection(){
    return(myPointDirection);
  }
  public double getXS(){
    return(myXspeed);
  }
    public double getYS(){
    return(myYspeed);
  }
}
