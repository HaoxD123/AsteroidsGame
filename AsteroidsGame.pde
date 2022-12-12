Spaceship MHT = new Spaceship();
Star [] Hao = new Star[400];
ArrayList <Asteroid> Rock = new ArrayList<Asteroid>();
ArrayList <Bullet> shots = new ArrayList <Bullet>() ;
public void setup() 
{
  size(800,800);
  for(int i = 0; i < Hao.length; i++){
    Hao[i] = new Star();
  }
  for(int i = 0; i < 30; i++){
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
    float distance = dist((float)MHT.getX(), (float)MHT.getY(), (float)Rock.get(i).getX(), (float)Rock.get(i).getY());
    if(distance < 20){
      Rock.remove(i);
    }
   }
   for (int i = 0; i < shots.size(); i++){
      shots.get(i).move();
      shots.get(i).show();
    }
  
  for (int i = 0; i < shots.size(); i++){
    for (int j = 0; j < Rock.size(); j++){
  if (dist((int)Rock.get(j).getX(), (int)Rock.get(j).getY(), (int)shots.get(i).getCenterX(), (int)shots.get(i).getCenterY()) <20){
    Rock.remove(j);
    shots.remove(i);
    j--;
    break;
    }
   }
  }
     if(keyPressed){
      if(key == 'a' | key == 'A'){
        MHT.turn(-7);
      }
      if(key == 'd' | key == 'D'){
        MHT.turn(7);
      }
      if(key == 'w' | key == 'W'){
        MHT.accelerate(0.1);
      }
      if(key == 's' | key == 'S'){
        MHT.accelerate(-0.1);
      }
      if(key == 'h' | key == 'H'){
        MHT.hyperSpace();
      }
      if(key == ' '){
      shots.add(new Bullet(MHT));
    }
  }
 }


