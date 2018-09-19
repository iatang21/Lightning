void setup()
{
  size(300,300);
  strokeWeight(3);
  background(12,12,12);
  smooth();
  for (int i = 0; i < drops.length; i++) {

    drops[i] = new Rain(); // Create each object
    r1 = new Rain();
  }
}

Rain r1;

int numDrops = 50;
Rain[] drops = new Rain[numDrops];

int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
int rainY = 50;
int rain2Y = 50;
int rain3Y = 50;
int rain4Y = 50;

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

	noStroke();
	for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
	}
	
	int cloudX = 0;
		while (cloudX<350){
			noStroke();
			fill(100);
			ellipse(cloudX,15,120,90);
			cloudX = cloudX + 80;
		}


}





void mousePressed()
{	int randSX = (int)(Math.random()*201)+50;
	startX = randSX;
	startY = 0;
	endX = randSX;
	endY = 0;
	
}


class Rain {
  float r = random(300);
  float y = random(-height);

  void fall() {

    y = y + 5;
    fill(0,10,200,180);
    rect(r, y, 3, 7);

   if(y>height){
   r = random(300);
   y = random(-100);
   }

  }
}