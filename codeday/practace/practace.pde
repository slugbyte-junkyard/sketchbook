<<<<<<< HEAD
PImage img;
color [] colors;

void setup(){
	size(displayWidth,displayHeight);
	smooth();
	background(0);
	img = loadImage("oldman.jpg");
	noCursor();
=======
int r=0;
int nr =0;
float lastX = 0.0;
float lastY = 0.0;

void setup(){
	size(displayWidth, displayHeight);
	smooth();
	background(0);
	translate(width/2, height/2);	
	// frameRate(15);

>>>>>>> parent of b847863... codeday pratice now is a maze app
}

boolean sketchFullScreen() {
  return true;
}

void draw(){
<<<<<<< HEAD


	image(img, 0, 0, width, height);
	int tileCount = width/max(mouseX, 10);
	float rectSize = width/(float)tileCount;

	int i=0;
	colors = new color[img.width*img.height];
	for (int gridY = 0; gridY<img.height; gridY++){
		for (int gridX = 0; gridX<img.width; gridX++){
			int px = (int)random(gridX);
			int py = (int)random(gridY);
			colors[i] = img.get(px,py);
			i++;
		}
	}

	i = 0;

	for (int gridY = 0; gridY<tileCount; gridY++){
		for (int gridX = 0; gridX<tileCount; gridX++){
			fill(colors[i]);
			rect(gridX*rectSize, gridY*rectSize, rectSize, rectSize);
			i++;

		}
	}

	i=0;
	for (int gridY = 0; gridY<tileCount; gridY++){
		for (int gridX = 0; gridX<tileCount; gridX++){
			fill(colors[i]);
			rect(gridX*rectSize, gridY*rectSize, rectSize, rectSize);
			i++;
			rotate(random(i)%360);
		}
=======
	pushMatrix();
	pushMatrix();
	translate(width/2, height/2);
	rotate(r%360);
	r++;

	background(0);	

	int circleResolution = (int) map(mouseY, 0, height, 2, 100);
	float radius = mouseX + 0.5;
	float angle = TWO_PI/circleResolution;

	strokeWeight(mouseX/20);

	for (int i = 0; i<=circleResolution; i++){
		noFill();
		stroke(random(100, 255));
		float x = cos(angle*i)*radius;
		float y = sin(angle*i)*radius;
		line(lastX,lastY,lastY,lastX);
		lastX = y;
		lastY = x;

	}

	popMatrix();
	translate(width/2, height/2);
	rotate(radians(300-(r%360)));

	for (int i = 0; i<=circleResolution; i++){
		noFill();
		stroke(255);
		float x = cos(angle*i)*radius;
		float y = sin(angle*i)*radius;
		line(0,0,lastY,lastX);
		lastX = y;
		lastY = x;

	}
	popMatrix();
	translate(width/2, height/2);
	rotate(radians(r%360));

	for (int i = 0; i<=circleResolution; i++){
		noFill();
		stroke(255);
		float x = cos(angle*i)*radius;
		float y = sin(angle*i)*radius;
		line(y,x,y,x);
		lastX = y;
		lastY = x;

>>>>>>> parent of b847863... codeday pratice now is a maze app
	}

}