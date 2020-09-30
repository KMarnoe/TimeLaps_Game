PImage startscreen;
PImage Menu_Screen;
PFont titel;

int stage;

int mX = mouseX;
int mY = mouseY;
void setup()
{
  stage =1;
  //Include the background "Timelapse"
  size(displayWidth, displayHeight);

  startscreen = loadImage("Timelapse.jpg");
  Menu_Screen = loadImage("Timelapse3.jpg");
  image(startscreen, 0, 0, displayWidth, displayHeight);
  


  titel  = createFont("Georgia", 80);
  textFont(titel);
  textAlign(0,CENTER);
  
  rectMode(CENTER);
}

void draw()
{
  //Stage 1 = Upstart Screen
  //Stage 2 = Go into Meny mode
  //Stage 3 Start Game
  
  
  if (stage ==1) {
    text("Welcome Dear Friend", 100, 450);
    text("Press any button to start", 100,510);
    if (key == ENTER) {
       background(255);   
        stage=2;
    }
  }
  if (stage ==2) {
    image(Menu_Screen, 0, 0, displayWidth, displayHeight);
    fill(255);
    rect(width/2,height/2+100,500,100,50);
    textSize(50);
    fill(0);
    text("START GAME",width/2-150,height/2+100);
   if( 
  }
}
void keyPressed()
{
}
