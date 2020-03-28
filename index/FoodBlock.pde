class FoodBlock {
  PVector pos;
  FoodBlock() {
    this.pos=new PVector();
    this.randomize();
  }
  void randomize() {
    this.pos.set(int(random(0, W-1)), int(random(0, H-1)));
  }
  void draw() {
    rectMode(CORNER);
    fill(240, 20, 20);
    noStroke();
    rect(this.pos.x*500/W, this.pos.y*500/H, 500/W, 500/H);
  }
}
