class Bullet extends Floater {
    public Bullet(double x, double y, double direction, double speedX, double speedY) {
        myCenterX = x;  // Spawn position X
        myCenterY = y;  // Spawn position Y
        myPointDirection = direction;  // Bullet's direction
        myXspeed = speedX + Math.cos(Math.toRadians(direction)) * 5;  // Bullet speed in X-direction
        myYspeed = speedY + Math.sin(Math.toRadians(direction)) * 5;  // Bullet speed in Y-direction
        myColor = color(0, 240, 0);  // Green bullet color
        corners = 4;  // Rectangle shape
        xCorners = new int[] {-5, 5, 5, -5};  // Rectangle corners
        yCorners = new int[] {-2, -2, 2, 2};
    }

    public void move() {
        super.move();  // Use inherited move behavior from Floater
    }

    public void show() {
        fill(myColor); 
        stroke(0);
        pushMatrix();  // Save transformation state
        translate((float) myCenterX, (float) myCenterY);  // Move to bullet position
        rotate((float) (myPointDirection * Math.PI / 180));  // Rotate bullet to its direction

        beginShape();
        for (int i = 0; i < corners; i++) {
            vertex(xCorners[i], yCorners[i]);  // Draw the rectangle
        }
        endShape(CLOSE);

        popMatrix();  // Restore transformation state
    }
}
