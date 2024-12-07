import java.util.ArrayList;
import processing.core.PApplet;

public class AsteroidsGame extends PApplet {
    Spaceship ship;
    Star[] stars;
    ArrayList<Asteroid> asteroids;

    public static void main(String[] args) {
        PApplet.main("AsteroidsGame");
    }

    public void settings() {
        size(500, 500);
    }

    public void setup() {
        ship = new Spaceship();
        stars = new Star[100];
        asteroids = new ArrayList<>();

        for (int i = 0; i < stars.length; i++) {
            stars[i] = new Star();
        }
        for (int i = 0; i < 20; i++) {
            asteroids.add(new Asteroid());
        }
    }

    public void draw() {
        background(0);
        for (Star s : stars) {
            s.show();
        }
        for (Asteroid a : asteroids) {
            a.show();
            a.move();
        }
        ship.show();
        ship.move();
        checkCollisions();
    }

    public void keyPressed() {
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

    public void checkCollisions() {
        for (int i = asteroids.size() - 1; i >= 0; i--) {
            Asteroid a = asteroids.get(i);
            if (dist((float) ship.myCenterX, (float) ship.myCenterY, (float) a.myCenterX, (float) a.myCenterY) < 40) {
                asteroids.remove(i);
            }
        }
    }
