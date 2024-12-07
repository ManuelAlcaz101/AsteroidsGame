class Asteroid extends Floater {
    private double rotationSpeed;

    public Asteroid() {
        corners = 6; 
        xCorners = new int[] { -20, -10, 10, 20, 10, -10 }; 
        yCorners = new int[] { 0, -20, -20, 0, 20, 20 };
        myColor = color(100, 100, 100);
        myCenterX = Math.random() * width;
        myCenterY = Math.random() * height;
        myXspeed = Math.random() * 2 - 1; 
        myYspeed = Math.random() * 2 - 1; 
        myPointDirection = Math.random() * 360;
        rotationSpeed = Math.random() * 2 - 1; 
    }

    @Override
    public void move() {
        super.move();
        myPointDirection += rotationSpeed;
    }

    @Override
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

        resetMatrix(); 
    }
}
