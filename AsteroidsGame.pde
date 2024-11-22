Spaceship ship;
Star[] stars;

void setup() {
    size(500, 500);
    // Initialize the spaceship
    ship = new Spaceship();
    // Create stars
    stars = new Star[100];
    for (int i = 0; i < stars.length; i++) {
        stars[i] = new Star();
    }
}

void draw() {
    background(0); // Black background
    // Draw stars
    for (Star s : stars) {
        s.show();
    }
    // Show and move spaceship
    ship.show();
    ship.move();
}

void keyPressed() {
    if (key == 'w') { // Accelerate
        ship.accelerate();
    } else if (key == 'a') { // Turn left
        ship.turnLeft();
    } else if (key == 'd') { // Turn right
        ship.turnRight();
    } else if (key == 'h') { // Hyperspace
        ship.hyperspace();
    }
}
