class Asteroids extends Floater  
{   
  public void setX(int x){myCenterX = x;}  
  public int getX() {return (int)myCenterX;}  
  public void setY(int y){myCenterY = y;}   
  public int getY(){return (int)myCenterY;}   
  public void setDirectionX(double x){myDirectionX = x;}   
  public double getDirectionX(){return myDirectionX;}    
  public void setDirectionY(double y){myDirectionY = y;}    
  public double getDirectionY(){return myDirectionY;}    
  public void setPointDirection(int degrees){myPointDirection = degrees;}   
  public double getPointDirection(){return myPointDirection;}
  private int rotation;
  private boolean shown = true;
  public void setShown(boolean x) {shown = x;}
  public boolean getShown() {return shown;}
  
  public Asteroids () {
  corners = 6;  //the number of corners, a triangular floater has 3   
  int[] allX = {12,0,-12,-12,0,12};
  int[] allY = {0,12,6,-6,-12,0};
  xCorners = allX;
  yCorners = allY;
  rotation = (int)(Math.random()*45-22);
  myColor = 120;   
  myCenterX = (int)(Math.random()*400); myCenterY = (int)(Math.random()*400); //holds center coordinates   
  myDirectionX = 0; myDirectionY = 0; //holds x and y coordinates of the vector for direction of travel   
  myPointDirection = 0; //holds current direction the ship is pointing in degrees
  }
  
  public void move ()   //move the floater in the current direction of travel
  {      
    turn(rotation);
    super.move();
    
  }
  
}