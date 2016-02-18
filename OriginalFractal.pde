private int colo = 0;
private int transition = 5;
public void setup()
{
	size(800, 800);
}
public void draw()
{
	background(colo);
	bezierSwirl(width/2, height/2, 0, PI/4, 250, 50);
	// bezierSwirl(width/2, height/2, 0, 3*PI/4, 250, 50);
	// bezierSwirl(width/2, height/2, 0, 5*PI/4, 250, 50);
	// bezierSwirl(width/2, height/2, 0, 7*PI/4, 250, 50);
	colo += transition;
	if(colo >= 255)
		transition = -5;
	else if(colo <= 0)
		transition = 5;
}
public void bezierSwirl(int x, int y, float scale, float angle, int col, int col2)
{
	pushMatrix();
	translate(x, y);
	scale(scale);
	rotate(angle);
	noStroke();
	fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	bezier(x, y-(height/2), x-(width/2), y-(height/4), x-(width/2), y+(height/4), x, y+(height/2));
	fill(col+5, 0, 0);
	ellipse(x-100, y, 400, 400);
	fill(col+5, col, 0);
	ellipse(x-50, y-150, 400, 400);
	popMatrix();
	if(scale <= 2)
		bezierSwirl(x, y, scale+0.05, angle-(PI/4), col-5, col2+6);
}