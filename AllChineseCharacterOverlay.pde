UnicodeToChar utc;
PFont font;

void setup()
{
  size(500, 500);
  noSmooth();

  font = createFont("SourceSansPro-Regular", 48, true);
  //Chinese character unicode range is 0x4E00~0x9FA5
  utc = new UnicodeToChar(font, "4E00", "9FA5", false);

  fill(0, 5);
  textSize(128);
  textAlign(CENTER, CENTER);

  //for (int i = 0; i < utc.valueArray.length; i++)
  //{
  //text(utc.valueArray[i], width/2, height/2);
  //}
}
void draw()
{
  if (frameCount < utc.valueArray.length)
  {
    text(utc.valueArray[frameCount], width/2, height/2);
  }
}
