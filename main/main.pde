Snake snake;
int W=50, H=50;
FoodBlock food;
void setup() {
  size(500, 500);
  snake=new Snake();
  food=new FoodBlock();
  frameRate(12);
}
void keyPressed() {
  snake.keyPress();
}
void draw() {
  background(0);
  food.draw();
  snake.update();
  snake.draw();
}
