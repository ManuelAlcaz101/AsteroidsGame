Spaceship ship;
Star[] stars;
ArrayList<Asteroid> asteroids;  // To store multiple asteroids
ArrayList<Bullet> bullets;  // To store bullets

void setup() {
    size(500, 500);
    ship = new Spaceship();
    stars = new Star[100];
    asteroids = new ArrayList<Asteroid>();
    bullets = new ArrayList<Bullet>();  // Initialize the bullet list
    
    for (int i = 0; i < stars.length; i++) {
        stars[i] = new Star();
    }
    
    for (int i = 0; i < 20; i++) {  // Add 20 asteroids
        asteroids.add(new Asteroid());
    }
}

void draw() {
    background(0);  // Black space background
    for (Star s : stars) {
        s.show();
    }

    // Display and move each asteroid
    for (Asteroid a : asteroids) {
        a.show();
        a.move();
    }

    // Display and move bullets
    for (int i = bullets.size() - 1; i >= 0; i--) {
        Bullet b = bullets.get(i);
        b.show();
        b.move();

        // Check for bullet-asteroid collisions
        for (int j = asteroids.size() - 1; j >= 0; j--) {
            Asteroid a = asteroids.get(j);
            if (dist((float) b.myCenterX, (float) b.myCenterY, (float) a.myCenterX, (float) a.myCenterY) < 20) {
                asteroids.remove(j);  // Remove asteroid on collision
                bullets.remove(i);    // Remove bullet
                break;  // Exit the loop early after removing both
            }
        }
    }

    ship.show();
    ship.move();

    // Check for collisions between ship and asteroids
    checkCollisions();
}

void keyPressed() {
    if (key == 'w') { 
        ship.accelerate(0.1);
    } else if (key == 'a') { 
        ship.turn(-5);
    } else if (key == 'd') { 
        ship.turn(5);
    } else if (key == 'h') { 
        ship.hyperspace();  // Close the 'if' block correctly here
    } else if (key == ' ') {  // Fire a bullet when the spacebar is pressed
        double bulletSpawnX = ship.myCenterX + Math.cos(Math.toRadians(ship.myPointDirection)) * 10;
        double bulletSpawnY = ship.myCenterY + Math.sin(Math.toRadians(ship.myPointDirection)) * 20;
        bullets.add(new Bullet(bulletSpawnX, bulletSpawnY, ship.myPointDirection, ship.myXspeed, ship.myYspeed));
    }
}  // Ensure the method ends properly






// Collision detection: Check if the ship collides with any asteroid
void checkCollisions() {
    for (int i = asteroids.size() - 1; i >= 0; i--) {
        Asteroid a = asteroids.get(i);
        if (dist((float) ship.myCenterX, (float) ship.myCenterY, (float) a.myCenterX, (float) a.myCenterY) < 40) { // Adjusted collision radius for larger asteroids
            asteroids.remove(i);  // Remove the asteroid if it collides with the ship
        }
    }
}
