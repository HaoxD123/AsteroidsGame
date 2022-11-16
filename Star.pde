class Star //note that this class does NOT extend Floater
{
  private int x,y;
  Star(){
    x = (int)(Math.random()*800);
    y = (int)(Math.random()*800);
  }
  public void show(){
    fill(255,255,255);
    ellipse(x,y,1.5,1.5);
  }
}
