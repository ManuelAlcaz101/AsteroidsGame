class Asteroid extends Floater {
        private double rotationSpeed;

        public Asteroid() {
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
            pushMatrix();
            translate((float) myCenterX, (float) myCenterY);
            rotate(radians((float) myPointDirection));
            fill(150);
            stroke(255);
            beginShape();
            vertex(-20, -10);
            vertex(-10, -20);
            vertex(10, -20);
            vertex(20, -10);
            vertex(20, 10);
            vertex(10, 20);
            vertex(-10, 20);
            vertex(-20, 10);
            endShape(CLOSE);
            popMatrix();
        }
    }
