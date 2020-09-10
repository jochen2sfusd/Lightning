int startX = 0, startY = 150, endX = 0, endY = 150, n = 0;

void setup()
{
  size(300,300);
  strokeWeight(1);
  background(155,155,255);
  rect(250,125,50,50);
}
void draw()
{
  stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256)); 
  while(endX < 300 && ((175 < endY || endY < 125) || endX < 250)) {
    endX = startX+(int)(Math.random()*10);
    endY = startY+(int)(Math.random()*19)-9;
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}
