class Snake {
  ArrayList<PVector> body;
  PVector pos;
  PVector vel;
  int len;
  Snake() {
    this.pos=new PVector(W/2, H/2);
    this.vel=new PVector(0, -1);
    this.len=5;
    this.body=new ArrayList<PVector>();
    this.body.add(this.pos);
  }
  void keyPress() {
    switch (keyCode) {
    case 87:
      if (this.vel.x==0&&this.vel.y==1) {
        this.die();
      }
      this.vel.set(0, -1);
      break;
    case 65:
      if (this.vel.x==1&&this.vel.y==0) {
        this.die();
      }
      this.vel.set(-1, 0);
      break;
    case 83:
      if (this.vel.x==0&&this.vel.y==-1) {
        this.die();
      }
      this.vel.set(0, 1);
      break;
    case 68:
      if (this.vel.x==-1&&this.vel.y==0) {
        this.die();
      }
      this.vel.set(1, 0);
      break;
    }
  }
  void die() {
    noLoop();
  }
  void update() {
    this.pos.add(this.vel);
    if (this.pos.x<0) {
      this.pos.x=W-1;
    }
    if (this.pos.x==W) {
      this.pos.x=0;
    }
    if (this.pos.y<0) {
      this.pos.y=H-1;
    }
    if (this.pos.y==H) {
      this.pos.y=0;
    }
    if (this.pos.x==food.pos.x&&this.pos.y==food.pos.y) {
      this.len+=5;
      food.randomize();
    }
    this.body.add(new PVector(this.pos.x, this.pos.y));
    if (this.body.size()>this.len) {
      this.body.remove(0);
    }
  }
  void draw() {
    rectMode(CORNER);
    fill(255, 65, 100);
    noStroke();
    int i=0;
    for (PVector p : this.body) {
      if (i%2==0) {
        fill(255, 65, 100);
      } else {
        fill(220, 25, 60);
      }
      rect(p.x*500/W, p.y*500/H, 500/W, 500/H);
      i++;
    }
  }
}
