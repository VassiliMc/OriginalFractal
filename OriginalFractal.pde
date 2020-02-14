int sizeX = 500;
int sizeY = 500;
boolean ran = false;
float largeCircle = (float)(Math.random()*1000+500);
float lengthFrom;
public void setup(){
	size(500,500);
	noLoop();
}
public void draw(){
	circleDrape(largeCircle);
}
public void circleDrape(float n){
	if(n <= 2){
		rowDrape(sizeX/n, n);
	} else {
		rowDrape(n, n);
		circleDrape(n/2);
	}
}
public void rowDrape(float sXn, float n){
	if(sXn <= -n){
		ellipse((sizeX/n)*sXn,n,n,n);
	} else {
		ellipse(((sizeX/n)*sXn),n,n,n);
		rowDrape(sXn - 1, n);
	}
}