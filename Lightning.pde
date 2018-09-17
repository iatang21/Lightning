void setup()
{
  size(300,300);
  strokeWeight(3);
  background(12,12,12);
}

int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;


void draw()
{
	fill(0,0,0,10);
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


}
void mousePressed()
{
	startX = 150;
	startY = 0;
	endX = 150;
	endY = 0;
	
}

