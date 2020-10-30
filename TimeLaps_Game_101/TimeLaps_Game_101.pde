/*
// programerings opgave efterår // første programerings opgave
// 
// TimeLaps Tool 
// By Kristoffer Marnø
// HC. Ørsted. Gymnasium
// 2D - MatPro class
// Last eddited 30-10-2020
// 
*/
PImage startscreen;
PImage Menu_Screen;
PImage GameWindow;

PImage HowToPlay;
PFont titel;

int stage;

int mX = mouseX;
int mY = mouseY;


//meny screen Buttons
int X = width/2; //900
int Y = height/2; //600
int W = 500;
int H = 100;

int u=0;

//GameMenu
float x = displayWidth/2;
float y = 0;
float xs = 0;
float ys = displayHeight/2;
float r;
float s = 2;
int i;
int num=0;

int XMenu = 1400;
int iso = 0;
int Expo =0;
int Ximages =0;
int i0;
//Class
stars s1;
int Start = 0;


int restartButton=0;
void setup()
{
  stage = 1;
  //Include the background "Timelapse"
  size(displayWidth, displayHeight);

  startscreen = loadImage("Timelapse.jpg");
  Menu_Screen = loadImage("Timelapse3.jpg");
  GameWindow = loadImage("Timelapse4.jpg");
  HowToPlay = loadImage("BaseScreen.jpg");
  image(startscreen, 0, 0, displayWidth, displayHeight);



  titel  = createFont("Georgia", 80);
  textFont(titel);
  textAlign(0, CENTER);

  s1 = new stars();
}

void draw()
{

  //Stage 1 = Upstart Screen
  //Stage 2 = Go into Meny mode
  //Stage 3 Start Game


  if (stage ==1) {
    text("TimeLaps Tool", 100, 450);
    if (i==100) {
      stage=2;
    }
  }
  delay(1);
  i++;


  if (stage == 2) { //STAGE 2 is curently not in the game
    i=0;
    image(Menu_Screen, 0, 0, displayWidth, displayHeight);
    fill(255);

    //rect(X, Y, W, H, 50);
    rect(width/2-250, height/2+50, 500, 100, 50);
    textSize(50);
    fill(0);
    text("START PROGRAM", width/2-200, height/2+100);

    //Button Help
    fill(255);
    rect(width/2-250, height/2+200, 500, 100, 50);
    textSize(50);
    fill(0);
    text("HELP", width/2-70, height/2+250);
  }

  if (stage == 4) {
    image(HowToPlay, 0, 0, displayWidth, displayHeight);

    fill(255);
    textSize(25);
    text("Press BackSpace to go back", width/2, 100);

    if (mousePressed) {
      num++;
      println("mousePressed");
      println(num);
    }

    switch (num) { //switch threw the help texts 
    default: 
      text("Click to see help", width/2, 50);
      break;

    case 1:
      text("ISO is how visible the stars turn out", width/2, 50);
      break;

    case 2:
      text("EXPO TIME is how long the star patterns should be", width/2, 50);
      break;

    case 3:
      text("X Images is how many pictures it shoudl take", width/2, 50);
      break;

    case 4:
      num = 0;
      break;
    }
  }

  //REAL GAME START HERE
  if (stage == 3) {
    if (u<1) {
      //Remove Background after every game
      background(4); 
      u++;
      println("BAckground");
    }



    println("gamemenu");
    if (Start==1) {
      println("Stage");
      s1.displayEllipse(255, restartButton);
      restartButton=0;
      fill(0);
      rect(75, 700, 1250, 700);
      rect(0, 0, 1250, 75);
    }
    GameMenu();
  }
}
void mousePressed()
{
  //main menu button test. IDC why i put it here but its here now and im fkn high on redbull so IDFC
  if (stage == 2) { //test for start program button
    if (mouseX > width/2-250 && mouseX < width/2+250 && mouseY > height/2+50 && mouseY < height/2+150) 
    {
      stage = stage +1;
      fill(0, 255, 0);
    }
  }
  if (stage == 2) { //test for help button
    if (mouseX > width/2-250 && mouseX < width/2+250 && mouseY > height/2+200 && mouseY < height/2+300) 
    {
      stage =4;
    }
  }
}
void keyPressed()
{ //if help site and backspace pressed go back to menu
  if (stage==4 && key==BACKSPACE) {
    stage=2;
  }
}
