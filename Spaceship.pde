class Spaceship extends Floater {
    public Spaceship() {
        myCenterX = width / 2; 
        myCenterY = height / 2;
        myXspeed = 0; 
        myYspeed = 0;
        myPointDirection = 0; // Default direction, but will be set by key presses
    }

    public void hyperspace() {
        myCenterX = Math.random()*500; 
        myCenterY = Math.random()*500;
        myXspeed = 0;
        myYspeed = 0;
        myPointDirection = 0;
    }

    
    public void show() {
        pushMatrix();
        translate((float) myCenterX, (float) myCenterY);
        rotate(radians((float) myPointDirection));

        fill(100); 
        stroke(255); 
        ellipse(0, 0, 20, 20);  // Make spaceship smaller (20x20)

        stroke(150);
        strokeWeight(4);
        line(-30, 0, -10, 0); 
        line(30, 0, 10, 0); 

        fill(50); 
        stroke(255);
        rect(-40, -40, 15, 80); // Smaller side parts
        line(-40, -40, -25, 40); 
        fill(50);
        rect(30, -40, 15, 80);
        line(30, -40, 45, 40); 

        fill(0); 
        ellipse(0, 0, 15, 15); // Center part
        strokeWeight(1);
        line(0, -8, 0, 8); 
        line(-8, 0, 8, 0); 

        popMatrix();
    }
}
