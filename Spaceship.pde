class Spaceship extends Floater {
    public Spaceship() {
        myCenterX = width / 2; 
        myCenterY = height / 2;
        myXspeed = 0; 
        myYspeed = 0;
        myPointDirection = 0; 
    }

    public void hyperspace() {
        myCenterX = width / 2; 
        myCenterY = height / 2;
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
        ellipse(0, 0, 30, 30); 

        stroke(150);
        strokeWeight(4);
        line(-40, 0, -15, 0); 
        line(40, 0, 15, 0); 

        fill(50); 
        stroke(255);
        rect(-60, -50, 20, 100); 
        line(-60, -50, -40, 50); 
        fill(50);
        rect(40, -50, 20, 100);
        line(40, -50, 60, 50); 

        fill(0); 
        ellipse(0, 0, 20, 20); 
        strokeWeight(1);
        line(0, -10, 0, 10); 
        line(-10, 0, 10, 0); 

        popMatrix();
    }
}
