class stars {
  float x = displayWidth/2;
  float y = 0;
  float xs = 0;
  float ys = displayHeight/2;
  float r;
  float s = 2;
  int i;


  int displayX = 662;
  int displayY = 375+100;
  stars() {
  }

  void move() {

    //< mindre
    //> større

    if (x>0) {
      x=x-r;
      ys=ys-r;
    }
  }


  void display(float iso) {
    stroke(random(50, 100), 0, random(100, 255), iso);

    line(x, y, xs, ys );
    stroke(250, 250, 250, iso);
    line(x-50, y, xs-50, ys);
    delay(100);
    r= random(5, 10);
  }

  void displayEllipse(float iso) {
    x=x-random(0, 3); //Change the last number to change the distance from star pattern to star pattern
    ys=ys-random(0, 3);
    
    //Draw North Star
    fill(250,250,250,10);
    ellipse(displayX, displayY, 5, 5);
    noFill();
    strokeWeight(1);
    stroke(random(50, 100), 0, random(100, 255), iso);

    //Draw Star Pattern
    strokeWeight(random(1,1.5));
    arc(displayX, displayY, x, x, random(0.1+s, 5+s), random(0.1+s, 5+s));
    stroke(200, 200, 200, random(150));
    arc(displayX, displayY, x, x, random(0.1+s, 5+s), random(0.1+s, 5+s));
    fill(255);
    
    //Draw 1500 starts random around the map
    while(i < 1500){
    ellipse(random(75,1250),random(50,700),1,1);
      i++;
    }
    
    //When drawn 40 lines of star pattern stop.
    if (x==40) {
      x=0;
    }
  }
}
