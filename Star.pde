class Star {
    private float x, y;

    public Star() {
        x = (float)(Math.random() * width);
        y = (float)(Math.random() * height);
    }

    public void show() {
        stroke(255); 
        point(x, y);
    }
}
