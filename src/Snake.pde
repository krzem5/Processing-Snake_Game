class Snake{
	ArrayList<PVector> body;
	PVector pos;
	PVector vel;
	int len;



	Snake(){
		this.pos=new PVector(WIDTH/2,HEIGHT/2);
		this.vel=new PVector(0,-1);
		this.len=5;
		this.body=new ArrayList<PVector>();
		this.body.add(this.pos);
	}



	void keyPress(){
		switch (keyCode){
		case 87:
			if (this.vel.x==0&&this.vel.y==1){
				this.die();
			}
			this.vel.set(0,-1);
			break;
		case 65:
			if (this.vel.x==1&&this.vel.y==0){
				this.die();
			}
			this.vel.set(-1,0);
			break;
		case 83:
			if (this.vel.x==0&&this.vel.y==-1){
				this.die();
			}
			this.vel.set(0,1);
			break;
		case 68:
			if (this.vel.x==-1&&this.vel.y==0){
				this.die();
			}
			this.vel.set(1,0);
			break;
		}
	}



	void die(){
		noLoop();
	}



	void update(){
		this.pos.add(this.vel);
		if (this.pos.x<0){
			this.pos.x=WIDTH-1;
		}
		if (this.pos.x==WIDTH){
			this.pos.x=0;
		}
		if (this.pos.y<0){
			this.pos.y=HEIGHT-1;
		}
		if (this.pos.y==HEIGHT){
			this.pos.y=0;
		}
		if (this.pos.x==fb.pos.x&&this.pos.y==fb.pos.y){
			this.len+=5;
			fb.randomize();
		}
		this.body.add(new PVector(this.pos.x,this.pos.y));
		if (this.body.size()>this.len){
			this.body.remove(0);
		}
	}



	void draw(){
		rectMode(CORNER);
		fill(255,65,100);
		noStroke();
		int i=0;
		for (PVector p:this.body){
			if (i%2==0){
				fill(255,65,100);
			} else{
				fill(220,25,60);
			}
			rect(p.x*500/WIDTH,p.y*500/HEIGHT,500/WIDTH,500/HEIGHT);
			i++;
		}
	}
}
