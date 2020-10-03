PImage startscreen;
PImage Menu_Screen;
PImage GameWindow;
PFont titel;

int stage;

int mX = mouseX;
int mY = mouseY;


//meny screen Buttons
int X = width/2; //900
int Y = height/2; //600
int W = 500;
int H = 100;


//GameMenu
int XMenu = 1400;
int iso = 0;
int Expo =0;
int Ximages =0;


void setup()
{
  stage =3;
  //Include the background "Timelapse"
  size(displayWidth, displayHeight);

  startscreen = loadImage("Timelapse.jpg");
  Menu_Screen = loadImage("Timelapse3.jpg");
  GameWindow = loadImage("Timelapse4.jpg");
  image(startscreen, 0, 0, displayWidth, displayHeight);



  titel  = createFont("Georgia", 80);
  textFont(titel);
  textAlign(0, CENTER);
}

void draw()
{

  //Stage 1 = Upstart Screen
  //Stage 2 = Go into Meny mode
  //Stage 3 Start Game


  if (stage ==1) {
    text("Welcome Dear Friend", 100, 450);
    text("Press any button to start", 100, 510);
    if (key == ENTER) {
      background(255);   
      stage=2;
    }
  }
  if (stage ==2) {
    image(Menu_Screen, 0, 0, displayWidth, displayHeight);
    fill(255);
    //rect(X, Y, W, H, 50);
    rect(width/2-250, height/2+50, 500, 100, 50);
    textSize(50);
    fill(0);
    text("START GAME", width/2-150, height/2+100);
  }
  //REAL GAME START HERE
  if (stage == 3) {
    background(0); 
    GameMenu();
    fill(255);
    rect(75, 50, 1250, 700);
    image(GameWindow, 75, 50, 1250, 700); //Load Background image fore game window.

    //rect(1000,300,300,100);
  }
}
void mousePressed()
{
  if (stage == 2) {
    if (mouseX > width/2-250 && mouseX < width/2+250 && mouseY > height/2+50 && mouseY < height/2+150) 
    {
      stage = stage +1;
      fill(0, 255, 0);
    }
  }
}
void keyPressed()
{
}
