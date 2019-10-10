void setup()
{
	noLoop();
	size(800,800);
	background(51, 171, 53);
	
}
void draw()
{
	fill(51, 171, 53);
	rect(0, 0, 800, 800);
	int counter = 0;
	for(int j = 20; j < 720; j = j + 71){
		for(int i = 50; i < 750;i = i +71){
			Die bob = new Die(i,j);
			bob.show();
			if(bob.dots == 6){
				counter = counter + 6;
			}else if(bob.dots == 5){
				counter = counter + 5;
			}else if(bob.dots == 4){
				counter = counter + 4;
			}else if(bob.dots == 3){
				counter = counter + 3;
			}else if(bob.dots == 2){
				counter = counter + 2;
			}else if(bob.dots == 1){
				counter = counter + 1;
			}

		}
	}
	textAlign(CENTER);
	text("Total of all dice: " + counter,400,780);
	
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
			for(int i = 16; i < 55; i = i + 14){
				ellipse(myX+i, myY+i, 5, 5);
			}
		}
		if(dots == 2){
			fill(0);
			for(int i = 16; i < 55; i = i + 29){
				ellipse(myX+i, myY+i, 5, 5);
			}
		}
		if(dots == 1){
			fill(0);
			ellipse(myX+30, myY + 30, 5, 5);
		}
	}
}
