Spaceship ship;
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();

void setup() {
    size(500, 500);
    ship = new Spaceship();
    for (int i = 0; i < 5; i++) {
        asteroids.add(new Asteroid());
    }
}

void draw() {
    background(0);
    
    ship.show();
    ship.move();
    
    for (int i = asteroids.size() - 1; i >= 0; i--) {
        Asteroid asteroid = asteroids.get(i);
        asteroid.show();
        asteroid.move();
        
        if (dist(asteroid.getCenterX(), asteroid.getCenterY(), ship.myCenterX, ship.myCenterY) < 20) {
            // Collision detected, remove asteroid
            asteroids.remove(i);
        }
    }
}

void keyPressed() {
    if (key == 'w') {
        ship.accelerate(0.1);
    } else if (key == 'a') {
        ship.turn(-5);
    } else if (key == 'd') {
        ship.turn(5);
    } else if (key == 'h') {
        ship.hyperspace();
    }
}
