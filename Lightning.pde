void setup()
{
  size(300,300);
  strokeWeight(3);
  background(12,12,12);
  smooth();
}

int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
int rainY = 50;

void draw()
{
	fill(12,12,12,10);
	rect(0,0,300,300);

	while (endY<300) {
		stroke(255);
		endX = startX + (int)(Math.random()*19)-9;
		endY = startY + (int)(Math.random()*10);
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
		
	}

	int cloudX = 0;
	while (cloudX<350){
		noStroke();
		fill(100);
		ellipse(cloudX,15,120,90);
		cloudX = cloudX + 80;
	}

//add rain?
		noStroke();
		fill(0,30,255);
		rect(10,rainY,1,5);
		rect(30,rainY + 10,1,5);
		rect(50,rainY + 30,1,5);
		rect(70,rainY + 50,1,5);
		rect(90,rainY + 30,1,5);
		rainY = rainY + 5;
		if (rainY>500) {
			rainY = 50;
		}

}
void mousePressed()
{
	startX = 150;
	startY = 0;
	endX = 150;
	endY = 0;
	
}

