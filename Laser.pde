class Laser extends Floater
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
  private boolean shown = true;
  public void setShown(boolean x) {shown = x;}
  public boolean getShown() {return shown;}
  private float dRadians;
  
  public Laser () {
  corners = 4;  //the number of corners, a triangular floater has 3   
  int[] allX = {6,-5,-5,6};
  int[] allY = {0,5,-5,0};
  xCorners = allX;
  yCorners = allY;
  myCenterX = s.getX(); 
  myCenterY = s.getY(); //holds center coordinates   
 
    myPointDirection = s.getPointDirection();
    double dRadians =myPointDirection*(Math.PI/180);
    myDirectionX = 5 * Math.cos(dRadians) + s.getDirectionX();
    myDirectionY = 5 * Math.sin(dRadians) + s.getDirectionY(); 
  
  }
  
  public void show ()  //Draws the floater at the current position  
  {             
    fill(255,0,0);   
    stroke(255,0,0);    
    
    //translate the (x,y) center of the ship to the correct position
    translate((float)myCenterX, (float)myCenterY);

    //convert degrees to radians for rotate()     
    float dRadians = (float)(myPointDirection*(Math.PI/180));
    
    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);
    
    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape();

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
  public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

     
  }
}