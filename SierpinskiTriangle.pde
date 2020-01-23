double len = 500;
public void setup()
{
	size(500, 500);
	fill(255, 255, 255);
}
public void draw()
{
	sierpinski(0 + (500-len)/2, 500 - (500-len*Math.sqrt(3)/2)/2, len);
}
public void mouseDragged()//optional
{
	background(211, 211, 211);
	//len = 500 * Math.random();
	redraw();
}
public void sierpinski(double x, double y, double len)
{
	if (len < 20) {
		triangle((int)x, (int)y, (int)(x+len), (int)y, (int)(x+len/2), (int)(y - Math.sqrt(3)/2*len));
		//triangle((int)x, (int)y, (int)(x+len), (int)y, (int)(x+len/2), (int)(y - len));
	}
	else {
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y-Math.sqrt(3)*len/4, len/2);
	}
}

public void sierpinski(double x, double y, double len, int clr) {
	if (len < 20) {
		fill((int)(clr + (7 * Math.random()),(int)(255 * Math.random()),(int)(255 * Math.random()));
		triangle((int)x, (int)y, (int)(x+len), (int)y, (int)(x+len/2), (int)(y - Math.sqrt(3)/2*len));
	}
	else {
		sierpinski(x, y, len/2, clr);
		sierpinski(x + len/2, y, len/2, clr);
		sierpinski(x + len/4, y-Math.sqrt(3)*len/4, len/2, clr);
	}
}