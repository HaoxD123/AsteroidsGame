//your variable declarations here
Spaceship MHT = new Spaceship();
Star [] Hao = new Star[400];
public void setup() 
{
  size(800,800);
  for(int i = 0; i < Hao.length; i++){
    Hao[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  MHT.move();
  MHT.show();
  for(int i = 0; i < Hao.length; i++){
    Hao[i].show();
  }
 
     if(keyPressed){
      if(key == 'a'){
        MHT.turn(-15);
      }
      if(key == 'd'){
        MHT.turn(15);
      }
      if(key == 'w'){
        MHT.accelerate(0.2);
      }
      if(key == 's'){
        MHT.accelerate(-0.2);
      }
      //if(key == 'h'){
      //  MHT.hyperspace();
      //}
      }
}


