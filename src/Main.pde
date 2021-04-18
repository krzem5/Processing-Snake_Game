final int WIDTH=50;
final int HEIGHT=50;



Snake s;
FoodBlock fb;



void setup(){
	size(500,500);
	s=new Snake();
	fb=new FoodBlock();
	frameRate(15);
}



void keyPressed(){
	s.keyPress();
}



void draw(){
	background(0);
	fb.draw();
	s.update();
	s.draw();
}
