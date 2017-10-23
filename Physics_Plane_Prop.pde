  
  
  /*Bella Memeo 10/20/17
  * CompLab - Riverpoint Academy
  * Adapted from example 3.1: Angular motion using rotate(), still implementing code to 
  * see what works and what doesn't. Still trying to implement code to understand how 
  * this works, or what makes the prop stop spinning after a while.
  * - 
  * PVectors weren't originally in the code so I tried to add them in and still have the
  * code function using the guide. I have another version where I was adding in more but
  * it eventually broke the prop so I wrote it in a seperate document. I would like to
  * have it work eventually but I'm not sure how yet.
  */
  
       
      class Mover
         {
         PVector location;
         PVector velocity;
         
          
         void update() 
          {
            // The Mover moves.
            location.add(velocity);
          }
        
          void display() {
            stroke(0);
            fill(175);
            // The Mover is displayed.
            ellipse(location.x,location.y,16,16);
          }
        
          Mover m = new Mover();
          {
            location = new PVector (random(width),random(height));
            velocity = new PVector (random(-2,2),random(-2,2));
          }
      }
          
        // Location
        float angle = sq(5);
        // Velocity
        float aVelocity = 0;
        // Acceleration
        float aAcceleration = 0.001;

    void setup() 
    
    {
      size(640,360); /* Draws a screen 640x360 for the vector
                      * to be vizualized on.
                      */
      frameRate(100); //Sets framerate
    }
    
    void draw() 
    
    {
      background(255);
    
      fill(175);
      stroke(0);
      rectMode(CENTER);
      translate(width/2,height/2);
      
      rotate(angle);
      strokeWeight(3.5);
       //ellipse(-50,0,50,0);
      line(-50,0,50,0);
      
      line(0,-50,0,50);
      //ellipse(0,-50,0,50);

      
      // Angular equivalent of velocity.add(acceleration);
     sq( aVelocity += aAcceleration); //
      // Angular equivalent of location.add(velocity);
      angle += aVelocity;
    }
      
  
  
  
  
  
 