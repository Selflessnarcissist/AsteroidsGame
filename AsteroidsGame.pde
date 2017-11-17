//your variable declarations here
Spaceship s = new Spaceship();
Asteroids a = new Asteroids();
Asteroids[] asteroid = new Asteroids[20];
Stars[] star = new Stars[1000];
boolean keyup = false;
boolean keyleft = false;
boolean keyright = false;
boolean keyh = false;
ArrayList <Asteroids> astarray = new ArrayList <Asteroids>();
public void setup() 
{
  size(400,400);
  for (int i = 0; i < 1000; i++ ) {
star[i] = new Stars();
  }
  for (int i = 0; i < 20; i++ ) {
asteroid[i] = new Asteroids();
asteroid[i].setDirectionX((double)Math.random()*2-1);
  asteroid[i].setDirectionY((double)Math.random()*2-1);
  }
  for (int i = 0; i < 20; i++ ) {
  astarray.add(0, new Asteroids());
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
    if (asteroid[i].getShown() == true) {
  asteroid[i].show();
    }
  asteroid[i].move();
  if (asteroid[i].getX()-s.getX()<=10 && asteroid[i].getY()-s.getY()<=10 && asteroid[i].getX()-s.getX()>=-10 && asteroid[i].getY()-s.getY()>=-10) {
  asteroid[i].setShown(false);
  
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