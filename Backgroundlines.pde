class Backgroundlines
{

  Backgroundlines()
  {
  }


  void update()
  {

    lines();
  }

  void lines()
  {
    for (int i = 0; i < height + 585; i+=35)
    {
      stroke(random(255), random(255), random(255));
      line(i, 0, i, height);
      line(0, height - 1, width, height - 1);
      line(width - 1, 0, width - 1, height);

      for (int a = 0; a < height + 585; a+=35)
      {
        stroke(random(255), random(255), random(255));
        line(0, i, width, i);
      }
    }
  }
}