class Bullet extends Floater {
    public Bullet(float x, float y, float direction, float speedX, float speedY) {
        myCenterX = x;  // Spawn position X
        myCenterY = y;  // Spawn position Y
        myPointDirection = direction;  // Bullet's direction
        myXspeed = speedX + cos(radians(direction)) * 5;  // Bullet speed in X-direction
        myYspeed = speedY + sin(radians(direction)) * 5;  // Bullet speed in Y-direction
        myColor = color(0, 240, 0);  // Green bullet color
        corners = 4;  // Rectangle shape
        xCorners = new int[] {-5, 5, 5, -5};  // Rectangle corners
        yCorners = new int[] {-2, -2, 2, 2};
    }

    public void show() {
        fill(myColor); 
        stroke(0);
        pushMatrix();  // Save transformation state
        translate(myCenterX, myCenterY);  // Move to bullet position
        rotate(radians(myPointDirection));  // Rotate bullet to its direction

        beginShape();
        for (int i = 0; i < corners; i++) {
            vertex(xCorners[i], yCorners[i]);  // Draw the rectangle
        }
        endShape(CLOSE);

        popMatrix();  // Restore transformation state
    }
}
