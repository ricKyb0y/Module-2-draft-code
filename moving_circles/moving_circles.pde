color c ;
int xpos;
int ypos;
int xspeed;
int sensorValue = 50;

void setup() {
size (500, 500);
c = color (255);
xpos = width/2;
ypos = height/2;
xspeed = 5;


}

void draw () {
  background (0);
  display();
  drive();
}
void display () {
  ellipseMode(CENTER);
  fill(c);
  ellipse(xpos, ypos,sensorValue, sensorValue);
  ellipse(xpos-100, ypos,sensorValue, sensorValue);
  ellipse(xpos, ypos-100,sensorValue,sensorValue);
  ellipse(xpos-100, ypos-100,sensorValue,sensorValue);
  
}

void drive () {
  xpos = xpos +xspeed;
  //ypos = ypos +1;
  sensorValue=sensorValue+ 1;
  if (xpos > width) {
    xpos = 0;
    sensorValue = 50;
  }
}


