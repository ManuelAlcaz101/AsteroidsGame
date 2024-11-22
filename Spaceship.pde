class Spaceship extends Floater {
    // Constructor
    public Spaceship() {
        corners = 3; // Triangular spaceship
        xCorners = new int[] { -10, 10, -10 }; // X coordinates for vertices
        yCorners = new int[] { -10, 0, 10 };  // Y coordinates for vertices
        myColor = color(255, 255, 255); // White color
        myCenterX = width / 2; // Start at center of the screen
        myCenterY = height / 2;
        myXspeed = 0; // Initially stationary
        myYspeed = 0;
        myPointDirection = 0; // Facing right
    }

    // Hyperspace: Move to a random position and stop moving
    public void hyperspace() {
        myCenterX = Math.random() * width;
        myCenterY = Math.random() * height;
        myXspeed = 0;
        myYspeed = 0;
        myPointDirection = Math.random() * 360; // Random direction
    }
}
