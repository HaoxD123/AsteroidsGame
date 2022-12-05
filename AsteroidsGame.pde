//your variable declarations here
Spaceship MHT = new Spaceship();
Star [] Hao = new Star[400];
ArrayList <Asteroid> Rock = new ArrayList<Asteroid>();
public void setup() 
{
  size(800,800);
  for(int i = 0; i < Hao.length; i++){
    Hao[i] = new Star();
  }
  for(int i = 0; i < 11; i++){
    Rock.add(new Asteroid());
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
   for(int i = 0; i < Rock.size(); i++){
      Rock.get(i).move();
      Rock.get(i).show();
    float d = dist(Rock.getX(), Rock.getY(),Rock.get(i).getX(), Rock.get(i).getY());
    if(d < 20){
      Rock.remove(i);
    }
   }
 
     if(keyPressed){
      if(key == 'a'){
        MHT.turn(-7);
      }
      if(key == 'd'){
        MHT.turn(7);
      }
      if(key == 'w'){
        MHT.accelerate(0.1);
      }
      if(key == 's'){
        MHT.accelerate(-0.1);
      }
      if(key == 'r'){
        MHT.hyperSpace();
      }
     }
}


