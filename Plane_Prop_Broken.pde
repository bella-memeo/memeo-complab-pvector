   
  
  /*Bella Memeo 10/20/17
  * CompLab - Riverpoint Academy
  * Processing
  * Adapted from example 3.1: Angular motion using rotate(), still implementing code to 
  * see what works and what doesn't. Still trying to implement code to understand how 
  * this works, or what makes the prop stop spinning after a while.
  * - 
  * PVectors weren't originally in the code so I tried to add them in and still have the
  * code function using the guide. This is the version that I broke, I'm not sure how to
  * fix it yet, but I'm working on it.
  */
  
       
      class Mover
         {
         PVector location;
         PVector velocity;
         PVector accelaration;
         float mass;
         
         // Location
         float angle = sq(5);
         // Velocity
         float aVelocity = 0;
         // Acceleration
         float aAcceleration = accelaration.x;
         
          
         void update() 
          {
            // The Mover moves.
            location.add(velocity);
            
            rotate(angle);
            // Angular equivalent of velocity.add(acceleration);
            sq( aVelocity += aAcceleration); //
            // Angular equivalent of location.add(velocity);
            angle += aVelocity;
          }
        
          void display() {
            stroke(0);
            fill(175);
            // The Mover is displayed.
            ellipse(location.x,location.y,16,16);
            stroke(0);

            rectMode(CENTER);
            // pushMatrix() and popMatrix() are necessary
            // so that the rotation of this shape doesn’t
            // affect the rest of our world.
            pushMatrix();
        
            // Set the origin at the shape’s location.
            translate(location.x,location.y);
            // Rotate by the angle.
            rotate(angle);
            rect(0,0,mass*16,mass*16);
            popMatrix();
            
          }
        
          Mover m = new Mover();
          {
            location = new PVector (random(width),random(height));
            velocity = new PVector (random(-2,2),random(-2,2));
          }
      }
          
        

    void setup() 
    
    {
      size(640,360); /* Draws a screen 640x360 for the vector
                      * to be vizualized on.
                      */
      frameRate(100); //S ets framerate
    }
    
    void draw() 
    
    {
      background(255);
    
      fill(175);
      stroke(0);
      rectMode(CENTER);
      translate(width/2,height/2);
      
      
      strokeWeight(3.5);
       //ellipse(-50,0,50,0);
      line(-50,0,50,0);
      
      line(0,-50,0,50);
      //ellipse(0,-50,0,50);

      
      
    }
      
  
  
  
  
  
 