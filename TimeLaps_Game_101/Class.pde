class stars {
  float x = displayWidth/2;
  float y = 0;
  float xs = 0;
  float ys = displayHeight/2;
  float r;
  float s = 2;

  int displayX = 662;
  int displayY = 375+100;


  float Images;
  float random;

  int i = 0;
  stars() {
  }
  void display(float iso) {//dont actally thing this part is in the main game :/ 
    stroke(random(50, 100), 0, random(100, 255), iso);

    line(x, y, xs, ys );
    stroke(250, 250, 250, iso);
    line(x-50, y, xs-50, ys);
    delay(100);
    r= random(5, 10);
  }

  void displayEllipse(float iso0, float restart) {
    
    if (restart==1) { //If restart button is pressed restart all thoes things
      x = displayWidth/2;
      i=0;
      displayX = 662;
      displayY = 375+100;
    }
    
    println(x);
    println("Class");
    iso0 = iso/12;
    x=x-random(0, 3); //Change the last number to change the distance from star pattern to star pattern
    ys=ys-random(0, 3);

    //Draw North Star
    fill(250, 250, 250, 10);
    ellipse(displayX, displayY, 5, 5);
    noFill();
    strokeWeight(1);
    stroke(random(50, 100), 0, random(100, 255), iso0);

    //Draw Star Pattern
    strokeWeight(random(1, 1.5));
    random = random(0.1+s, 5+s);
    Images = Ximages/457;



    arc(displayX, displayY, x, x, random, random(0.1+s, Images+s));
    stroke(200, 200, 200, random(150));

    arc(displayX, displayY, x, x, random, random(0.1+s, Images+s)); 
    fill(255);

    stroke(0);
    
    //Draw 1500 starts random around the map
    while (i < 1500) { //1500 is the best solutionnnnnn :)
      stroke(255);
      ellipse(random(75, 1250), random(50, 700), 1, 1);
      i++;
    }
  }
}
