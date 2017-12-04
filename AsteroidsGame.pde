//your variable declarations here
Spaceship s = new Spaceship();
Asteroids[] asteroid = new Asteroids[20];
Stars[] star = new Stars[1000];
boolean keyup = false;
boolean keyleft = false;
boolean keyright = false;
boolean keyh = false;
int astnum = 0;
ArrayList <Asteroids> astarray = new ArrayList <Asteroids>();
ArrayList <Asteroidsv2> astarray2 = new ArrayList <Asteroidsv2>();
public void setup() 
{
  size(400,400);
  for (int i = 0; i < 1000; i++ ) {
    star[i] = new Stars();
  }
  for (int i = 0; i < 20; i++ ) {
    astarray.add(0, new Asteroids());
  }
  for (int i = 0; i < 20; i++ ) {
    //astarray[i] = new Asteroids();
    astarray.get(i).setDirectionX((double)Math.random()*2-1);
    astarray.get(i).setDirectionY((double)Math.random()*2-1);
  }
  
}
public void draw() 
{
  background (0);
  strokeWeight(0);
  for (int i = 0; i < 1000; i++ ) {
    star[i].show();
  }
  s.show();
  s.move();
  
  for (int i = 0; i < 20; i++ ) {
    if (astarray.get(i).getShown() == true) {
      astarray.get(i).show();
      astarray.get(i).move();
    }

  }
  for (int i = 0; i < (astnum); i++ ) {
     if (astarray2.get(i).getShown() == true) {
       astarray2.get(i).show();
       astarray2.get(i).move();
     }
  }
    
    
  
  
  for (int i = 0; i < 20; i ++) {
  //collision
  if (astarray.get(i).getX()-s.getX()<=10 && astarray.get(i).getY()-s.getY()<=10 && astarray.get(i).getX()-s.getX()>=-10 && astarray.get(i).getY()-s.getY()>=-10 && astarray.get(i).getShown() == true) {
  astarray.get(i).setShown(false);
  astarray2.add(0, new Asteroidsv2());
  //astarray2.get(0).setShown(true);
  astarray2.get(0).setDirectionX((double)Math.random()*2-1);
  astarray2.get(0).setDirectionY((double)Math.random()*2-1);
  /*astarray2.get(0).setX(astarray.get(i).getX());
  astarray2.get(0).setY(astarray.get(i).getY());
  */
  /*
  astarray2.add(0, new Asteroidsv2());
  astarray2.get(0).setShown(true);
  astarray2.get(0).setDirectionX((double)Math.random()*2-1);
  astarray2.get(0).setDirectionY((double)Math.random()*2-1);
  astarray2.get(0).setX(astarray.get(i).getX());
  astarray2.get(0).setY(astarray.get(i).getY());

  astarray2.add(0, new Asteroidsv2());
  astarray2.get(0).setShown(true);
  astarray2.get(0).setDirectionX((double)Math.random()*2-1);
  astarray2.get(0).setDirectionY((double)Math.random()*2-1);
  astarray2.get(0).setX(astarray.get(i).getX());
  astarray2.get(0).setY(astarray.get(i).getY());
  astnum+=3;
  */
  }
  }
  
  for (int i = 0; i < (astnum-1); i ++) {
  //collision
  if (astarray2.get(i).getX()-s.getX()<=5 && astarray2.get(i).getY()-s.getY()<=5 && astarray2.get(i).getX()-s.getX()>=-5 && astarray2.get(i).getY()-s.getY()>=-5 && astarray2.get(i).getShown() == true) {
  astarray2.get(i).setShown(false);
  astarray2.remove(i);
  astnum+=-1;
  }
  }  
 }
  


void keyPressed() {
  if (keyCode == UP) {
    keyup = true;
    s.accelerate(1);
  }
  if (keyCode == LEFT) {
    keyleft = true;
    s.turn(-2);
  }
  if (keyCode == RIGHT) {
    keyright = true;
    s.turn(2);
  }
  if (key == ' ') {
    keyh = true;
    s.setX(((int)(Math.random()*400)));
    s.setY(((int)(Math.random()*400)));
    s.setDirectionX(0);
    s.setDirectionY(0);
    s.setPointDirection(0);
  }
}