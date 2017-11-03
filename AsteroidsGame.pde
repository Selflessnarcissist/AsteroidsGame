//your variable declarations here
Spaceship s = new Spaceship();


Stars[] star = new Stars[1000];
boolean keyup = false;
boolean keyleft = false;
boolean keyright = false;
boolean keyh = false;
public void setup() 
{
  size(400,400);
  for (int i = 0; i < 1000; i++ ) {
star[i] = new Stars();
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