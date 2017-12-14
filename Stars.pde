class Stars //note that this class does NOT extend Floater
{
  private float xpos;
  private float ypos;
  private int a;
  private int b;
  private int c;
  private Stars() {
    xpos = (float)(Math.random()*400);
    ypos = (float)(Math.random()*400);
    
    a = (int)((Math.random()*75)+(Math.random()*75));
    b = (int)(Math.random()*150);
    c = (int)((Math.random()*225)-(Math.random()*75));
  }
  
  public void show() {
    fill(a,b,c);
    ellipse(xpos,ypos,2,2);
  }
  
}