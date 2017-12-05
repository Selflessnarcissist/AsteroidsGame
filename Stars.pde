class Stars //note that this class does NOT extend Floater
{
  private float xpos;
  private float ypos;
  private float a;
  private float b;
  private float c;
  private Stars() {
    xpos = (float)(Math.random()*400);
    ypos = (float)(Math.random()*400);
    
    a = (float)(Math.random()*150);
    b = (float)(Math.random()*150);
    c = (float)(Math.random()*150);
  }
  
  public void show() {
    fill((int)a,(int)b,(int)c);
    ellipse(xpos,ypos,2,2);
  }
  
}