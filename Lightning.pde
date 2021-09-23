PImage img;
int startX = 200;
int startY = 30;
int endX = 200;
int endY = 0;

void setup()
{
  size(400, 400);
  background(0);
  img = loadImage("starr.png");
  fill(230,0,0);
  ellipse(200,380,300,90);
  fill(105,70,0);
  noStroke();
  quad(187,350,213,350,213,390,187,390);
}

void draw()
{
  stroke(130,220,140);
  strokeWeight(0.6);
  while (startX<320 && startX>80 && startY<360) {
    endY = startY + ((int)(Math.random()*10));
    endX = (startX + ((int)(Math.random()*19)-9));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  startX = 200;
  startY = 30;
  endX = 200;
  endY = 0;
}

void keyPressed()
{
  img.resize(50,50);
  image(img,175,10);
}

