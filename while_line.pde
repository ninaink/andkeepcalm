void setup()
{
  size (200, 200);
}

void draw()
{
  int y=0;
  while(y<height)
  {
    line(0, y, 200, y);
    y=y+10;
  }
}
