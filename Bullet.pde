class Bullet extends Floater {
    public Bullet(double x, double y, double direction, double speedX, double speedY) {
        myCenterX = x;
        myCenterY = y + 10;  
        myPointDirection = direction;  
        myXspeed = Math.cos(Math.toRadians(direction)) * 5;  
        myYspeed = Math.sin(Math.toRadians(direction)) * 5;  
        myColor = color(0, 240, 0);  
        corners = 4;
        xCorners = new int[] {-5, 5, 5, -5};
        yCorners = new int[] {-2, -2, 2, 2};
    }

    public void move() {
        super.move();  
    }

    public void show() {
        fill(myColor); 
        stroke(0);
        translate((float) myCenterX, (float) myCenterY);  
        rotate((float) (myPointDirection * Math.PI / 180)); 

        beginShape();
        for (int i = 0; i < corners; i++) {
            vertex(xCorners[i], yCorners[i]);
        }
        endShape(CLOSE);

        resetMatrix();  // Reset transformation matrix after drawing
    }
}
