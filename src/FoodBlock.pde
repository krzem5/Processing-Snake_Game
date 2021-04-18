class FoodBlock{
	PVector pos;



	FoodBlock(){
		this.pos=new PVector();
		this.randomize();
	}



	void randomize(){
		this.pos.set(int(random(0,WIDTH-1)),int(random(0,HEIGHT-1)));
	}



	void draw(){
		rectMode(CORNER);
		fill(240,20,20);
		noStroke();
		rect(this.pos.x*500/WIDTH,this.pos.y*500/HEIGHT,500/WIDTH,500/HEIGHT);
	}
}
