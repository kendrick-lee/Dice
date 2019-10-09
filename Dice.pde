void setup()
{
	noLoop();
	size(800,800);
}
void draw()
{
	Die bob = new Die(50,50);
	bob.show();
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int dots;
	int myX,myY;

	Die(int x, int y) //constructor
	{
		myX = x;
		myY = y;
		roll();
	}
	void roll()
	{
		int side = (int)((Math.random()*6)+1);
		
		if(side == 6){
			dots = 6;
		}else if(side == 5){
			dots = 5;
		}else if(side == 4){
			dots = 4;
		}else if(side == 3){
			dots = 3;
		}else if(side == 2){
			dots = 2;
		}else if(side == 1){
			dots = 1;
		}

	}
	void show()
	{
		fill(255);
		rect(myX,myY,60,60,5,5,5,5);
		if(dots == 6){
			fill(0);
			for(int i = 16; i < 60; i = i + 16){
				ellipse(myX+15, myY+i, 5, 5);
				ellipse(myX+45, myY+i, 5, 5);
			}
			
		}
		if(dots == 5){
			fill(0);
			for(int i = 16; i < 60; i = i + 30){
				ellipse(myX+15, myY+i, 5, 5);
				ellipse(myX+45, myY+i, 5, 5);
			}
			ellipse(myX+30, myY + 30, 5, 5);
		}
		if(dots == 4){
			fill(0);
			for(int i = 16; i < 60; i = i + 30){
				ellipse(myX+15, myY+i, 5, 5);
				ellipse(myX+45, myY+i, 5, 5);
			}
		}
		if(dots == 3){
			fill(0);
			for(int i = 13; i < 55; i = i + 17){
				ellipse(myX+i, myY+i, 5, 5);
			}
		}
		for(dots == 2){
			fill(0);
			for(int i = 13; i < 55; i = i + 17){
				ellipse(myX+i, myY+i, 5, 5);
			}
		}
	}
}
