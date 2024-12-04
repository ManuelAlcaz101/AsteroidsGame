Spaceship ship;
Star[] stars;

void setup() {
    size(500, 500);
    ship = new Spaceship();
    stars = new Star[100];
    for (int i = 0; i < stars.length; i++) {
        stars[i] = new Star();
    }
}

void draw() {
    background(0); 
    for (Star s : stars) {
        s.show();
    }
    ship.show();
    ship.move();
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

