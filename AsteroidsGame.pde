//your variable declarations here
Spaceship s = new Spaceship();
Asteroids[] asteroid = new Asteroids[20];
Stars[] star = new Stars[3000];
boolean keyup = false;
boolean keyleft = false;
boolean keyright = false;
boolean keyh = false;
int astnum = 0;
ArrayList <Asteroids> astarray = new ArrayList <Asteroids>();
ArrayList <Asteroidsv2> astarray2 = new ArrayList <Asteroidsv2>();
ArrayList <Laser> l = new ArrayList <Laser>();
int lnum = 0;
public void setup() 
{
  size(400,400);
  frameRate(120);
  for (int i = 0; i < star.length; i++ ) {
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
   for (int i = 0; i < 3000; i++ ) {
    star[i].show();
  }
  
  for (int i = 0; i < (lnum); i++ ) {
       l.get(i).show();
       l.get(i).move();
       if (l.get(i).getX() >= 400 || l.get(i).getX() <= 0 || l.get(i).getY() >= 400 || l.get(i).getY() <= 0) {
       l.remove(i);
       lnum += -1;
       }
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
  for (int j = 0; j < lnum-1; j++) {
  if (astarray.get(i).getX()-l.get(j).getX()<=5 && 
  astarray.get(i).getY()-l.get(j).getY()<=5 && 
  astarray.get(i).getX()-l.get(j).getX()<=5 && 
  astarray.get(i).getY()-l.get(j).getY()<=5 && 
  astarray.get(i).getShown() == true) {
  astarray.get(i).setShown(false);
       l.remove(j);
       lnum += -1;
  for(int k = 0; k < 3; k++) {
  astarray2.add(0, new Asteroidsv2());
  astarray2.get(0).setShown(true);
  astarray2.get(0).setDirectionX((double)Math.random()*2-1);
  astarray2.get(0).setDirectionY((double)Math.random()*2-1);
  astarray2.get(0).setX(astarray.get(i).getX());
  astarray2.get(0).setY(astarray.get(i).getY());
    astnum+=1;
  }
  }
  }
  }
  
  for (int i = 0; i < (astnum-1); i ++) {
  //collision
  for (int j = 0; j < lnum-1; j++) {
  if (astarray2.get(i).getX()-l.get(j).getX()<=5 && 
  astarray2.get(i).getY()-l.get(j).getY()<=5 && 
  astarray2.get(i).getX()-l.get(j).getX()<=5 && 
  astarray2.get(i).getY()-l.get(j).getY()<=5 && 
  astarray2.get(i).getShown() == true) {
  astarray2.get(i).setShown(false);
  astarray2.remove(i);
  astnum+=-1;
  l.remove(j);
  lnum += -1;
  }
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
  if (key == 'h') {
    keyh = true;
    s.setX(((int)(Math.random()*400)));
    s.setY(((int)(Math.random()*400)));
    s.setDirectionX(0);
    s.setDirectionY(0);
    s.setPointDirection(0);
  }
}
  void mousePressed() {
  l.add(0, new Laser());

  lnum+=1;
}


  