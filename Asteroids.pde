public class Asteroid extends Floater {
    private double rotationSpeed;

    public Asteroid() {
        corners = 12;
        xCorners = new int[corners];
        yCorners = new int[corners];
        myColor = color(150, 150, 150);
        myCenterX = Math.random() * width;
        myCenterY = Math.random() * height;
        myXspeed = Math.random() * 2 - 1;
        myYspeed = Math.random() * 2 - 1;
        myPointDirection = Math.random() * 360;
        rotationSpeed = Math.random() * 2 - 1;  
        for (int i = 0; i < corners; i++) {
            xCorners[i] = (int) (Math.cos(Math.PI * 2 * i / corners) * 20);
            yCorners[i] = (int) (Math.sin(Math.PI * 2 * i / corners) * 20);
        }
    }

    @Override
    public void move() {
        super.move();
        myPointDirection += rotationSpeed;
    }

    public double getCenterX() {
        return myCenterX;
    }

    public double getCenterY() {
        return myCenterY;
    }
}
