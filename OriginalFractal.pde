public void setup()
{
	size(800, 800);
}
public void draw()
{
	background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	bezierSwirl(width/2, height/2, 0, PI/4, 50);
	bezierSwirl(width/2, height/2, 0, 3*PI/4, 50);
	bezierSwirl(width/2, height/2, 0, 5*PI/4, 50);
	bezierSwirl(width/2, height/2, 0, 7*PI/4, 50);
}
public void bezierSwirl(int x, int y, float scale, float angle, int col)
{
	pushMatrix();
	translate(x, y);
	scale(scale);
	rotate(angle);
	fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	bezier(x, y-(height/2), x-(width/2), y-(height/4), x-(width/2), y+(height/4), x, y+(height/2));
	fill(col+5, 0, 0);
	ellipse(x-100, y, 400, 400);
	fill(col+5, col, 0);
	ellipse(x-50, y-150, 400, 400);
	popMatrix();
	if(scale <= 2)
		bezierSwirl(x, y, scale+0.05, angle-(PI/32), col+5);
}