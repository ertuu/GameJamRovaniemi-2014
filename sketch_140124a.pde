PImage heart;

float x=300, y=200, dx=0, dy=0, x1=600, y1=200, dx1=0, dy1=0;
float ar2=20, ar3=30, ar4=40, ar5=50, ar6=60, ar7=70;
float br2=20, br3=30, br4=40, br5=50, br6=60, br7=70;

float b1x=-30, b1y=-30, b2x=-30, b2y=-30;

float bullet1r=10, bullet2r=10;

float borderx=390;

int a=1, b=1;



void setup() {
  heart = loadImage("heart.gif");
  frameRate(60);
  size(800, 400);
  noStroke();
  smooth();
}

void draw()
{

  if (dist(b1x, b1y, x1+(br2/4), y1+(br2/4))<25) {
    borderx=borderx+13;
    br2=br2+3;
    bullet2r=bullet2r+2;
  }

  if (dist(b2x, b2y, x+(ar2/4), y+(ar2/4))<25) {
    borderx=borderx-13;
    ar2=ar2+3;
    bullet1r=bullet1r+2;
  }



  background(150);

  //----------- bullets

  ellipse(b1x, b1y, bullet1r, bullet1r); 
  fill(0); 
  ellipse(b2x, b2y, bullet2r, bullet2r); 
  fill(255);



  fill(34, 213, 142, 150);
  rect(borderx, 0, 20, 400); 
  fill(255);
  rect(0, 380, 800, 50);  

  rect(x, y, ar2, ar2);
  fill(0);
  rect(x1, y1, br2, br2);
  fill(255);
  rect(0, 0, 800, 20);
  rect(0, 0, 20, 400);
  rect(780, 0, 20, 400);
  image(heart, x+(ar2/4), y+(ar2/4), (ar2/2), (ar2/2));
  image(heart, x1+(br2/4), y1+(br2/4), (br2/2), (br2/2));
  x=x+dx;
  y=y+dy;
  x1=x1+dx1;
  y1=y1+dy1;

  b1x=b1x+10;
  b2x=b2x-10;

  for (int i=0;i<800;i++)
  {

    if (dist(x, y, i, 380)<22 ) { 
      dy=-dy;
    }

    if (dist(x, y, i, 0)<22) { 
      dy=-dy;
    }
    if (dist(x, y, 0, i)<22) { 
      dx=-dx;
    }
    if (dist(x, y, 780, i)<22) { 
      dx=-dx;
    }
    if (dist(x1, y1, i, 380)<22 ) { 
      dy1=-dy1;
    }

    if (dist(x1, y1, i, 0)<22) { 
      dy1=-dy1;
    }
    if (dist(x1, y1, 0, i)<22) { 
      dx1=-dx1;
    }
  }
}
void keyPressed() {

  if (key=='z' && x<borderx) {

    b1x=x+30;
    b1y=y+10;
  }

  if (key=='m' && x1>borderx) {

    b2x=x1-30;
    b2y=y1+10;
  }

  if (key=='w') {

    dy=-5;
  }
  if (key=='s') {

    dy=5;
  }
  if (key=='a') {

    dx=-5;
  }
  if (key=='d') {

    dx=5;
  }
  if (key=='o') {

    dy1=-5;
  }
  if (key=='l') {

    dy1=5;
  }
  if (key=='k') {

    dx1=-5;
  }
  if (key=='ö') {

    dx1=5;
  }
}

void keyReleased() {

  dx=0;
  dy=0;
  dx1=0;
  dy1=0;
}

