class Timer
{
  float time;
  float wait = 1000;

  boolean tick = false;

  Timer()
  {
    time = millis();
    smooth();
    strokeWeight(3);
  }


  void update()
  {
    controll();
    display();
  }

  void controll()
  {
    if (millis() - time >= wait)
    {
      tick = !tick;
      time = millis();
    }
  }

  void display()
  {
    noStroke();
    
    //if(tick == true)
    //{
    // stroke(0);
    // fill(255);
    // rect(width/2, 0, width, height/2);
    // rect(0, height/2, width/2, height);
    //}
    
    //if(tick == false)
    //{
    //  stroke(0);
    //  fill(255);
    //  rect(0, 0, width/2, height/2);
    //  rect(width/2, height/2, width, height);
    //}
  }
}