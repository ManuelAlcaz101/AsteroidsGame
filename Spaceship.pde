class Spaceship extends Floater {
    public Spaceship() {
        // Initialize Spaceship specific properties
        x = width / 2;
        y = height / 2;
        directionX = 0;
        directionY = 0;
        pointDirection = 0;
        floaterColor = color(255, 255, 255); // White color
        rotationSpeed = 5; // Rotation speed
    }

    // Hyperspace feature: move to a random position and stop moving
    public void hyperspace() {
        x = (float)(Math.random() * width);
        y = (float)(Math.random() * height);
        directionX = 0;
        directionY = 0;
        pointDirection = (float)(Math.random() * 360); // Random direction
    }
}
