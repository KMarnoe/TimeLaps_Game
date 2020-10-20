//*************************************************************READ BUTTONS START*****************************************************************************************//

void DrawButtonStart(String text, int ButtonX, int ButtonY) {
  stroke(0);
  textSize(60);
  stroke(255);
  fill(80, 250, 80);
  rect(ButtonX, ButtonY, 250, 100, 25);

  fill(255);
  text(text, ButtonX+30, ButtonY+40);
  //Base Background BUTTON Collor

  if (mouseX > ButtonX && mouseX < ButtonX+250 && mouseY > ButtonY && mouseY < ButtonY+100 && mousePressed && text=="START")
  {
    Start=1;
    fill(250, 80, 80);
    rect(ButtonX, ButtonY, 250, 100, 25);
    delay(100);
    println("START");
  }
}
//*************************************************************READ BUTTONS RESTART*****************************************************************************************//

void DrawButtonRestart(String text, int ButtonX, int ButtonY) {
  stroke(0);
  textSize(40);
  stroke(255);
  fill(80, 250, 80);
  rect(ButtonX, ButtonY, 250, 100, 25);

  fill(255);
  text(text, ButtonX+30, ButtonY+40);
  //Base Background BUTTON Collor

  if (mouseX > ButtonX && mouseX < ButtonX+250 && mouseY > ButtonY && mouseY < ButtonY+100 && mousePressed && text=="RESTART")
  {
    //Restart game 
    u=0;
    restartButton=1;
    y=0;
    Start=0;
    //
    
    fill(250, 80, 250);
    rect(ButtonX, ButtonY, 250, 100, 25);
    delay(100);
    println("RESTART");
  }
}
void DrawButton(String text, int ButtonX, int ButtonY) //NTS HOW TO JUSE COMMAND DRAWBUTTON: DrawButton("TEXT TO BE SHOWN",PLACEMENT IN X & Y NORTH WEST CORNER//
{
  stroke(0);
  textSize(40);
  fill(255);
  text(text, ButtonX, ButtonY-40);
  //Base Background BUTTON Collor
  fill(255);
  rect(ButtonX, ButtonY, 250, 100, 25);

  //Button +
  fill(80, 80, 80);
  rect(ButtonX, ButtonY, 125, 100, 25);
  textSize(100);
  fill(255);
  text("+", ButtonX+30, ButtonY+30);

  //Button -
  fill(80, 80, 80);
  rect(ButtonX+125, ButtonY, 125, 100, 25);
  fill(255);
  text("-", ButtonX+30+125, ButtonY+30);




  //Read if mouse is in the area and mousePressed:
  //IF BUTTON + IS PRESSED LIGHT UP KEY
  if (mouseX > ButtonX && mouseX < ButtonX+125 && mouseY > ButtonY && mouseY < ButtonY+100 && mousePressed)
  {
    fill(80, 250, 80);
    rect(ButtonX, ButtonY, 125, 100, 25);
  }
  //Read if mouse is in the area and mousePressed:
  //IF BUTTON - IS PRESSED LIGHT UP KEY
  if (mouseX > ButtonX+125 && mouseX < ButtonX+250 && mouseY > ButtonY && mouseY < ButtonY+100 && mousePressed)
  {
    fill(80, 250, 80);
    rect(ButtonX+125, ButtonY, 125, 100, 25);
  }


  // //*************************************************************READ BUTTONS ISO*****************************************************************************************//

  if (mouseX > ButtonX && mouseX < ButtonX+125 && mouseY > ButtonY && mouseY < ButtonY+100 && mousePressed && text=="ISO")
  {
    iso=iso+10;
    if (iso==3210)
    {
      iso=iso-10;
    }
    delay(100);
    //fill(255, 250, 80);
    //rect(ButtonX, ButtonY, 125, 100, 25);
  }
  if (mouseX > ButtonX+125 && mouseX < ButtonX+250 && mouseY > ButtonY && mouseY < ButtonY+100 && mousePressed && text=="ISO")
  {
    iso=iso-10;
    if (iso<0) {
      iso=0;
    }


    delay(100);
    // fill(80, 250, 255);
    // rect(ButtonX+125, ButtonY, 125, 100, 25);
  }
  // //*************************************************************READ BUTTONS EXPO*****************************************************************************************//
  if (mouseX > ButtonX && mouseX < ButtonX+125 && mouseY > ButtonY && mouseY < ButtonY+100 && mousePressed && text=="EXPO TIME")
  {
    Expo=Expo+1;
    delay(100);
    //fill(255, 250, 80);
    //rect(ButtonX, ButtonY, 125, 100, 25);
  }
  if (mouseX > ButtonX+125 && mouseX < ButtonX+250 && mouseY > ButtonY && mouseY < ButtonY+100 && mousePressed && text=="EXPO TIME")
  {
    Expo=Expo-1;
    if (Expo<0) {
      Expo=0;
    }
    delay(100);
    // fill(80, 250, 255);
    // rect(ButtonX+125, ButtonY, 125, 100, 25);
  }

  //  //*************************************************************READ BUTTONS X IMAGES*****************************************************************************************//
  if (mouseX > ButtonX && mouseX < ButtonX+125 && mouseY > ButtonY && mouseY < ButtonY+100 && mousePressed && text=="X Images")
  {
    Ximages=Ximages+100;
    delay(100);
    //fill(255, 250, 80);
    //rect(ButtonX, ButtonY, 125, 100, 25);
  }
  if (mouseX > ButtonX+125 && mouseX < ButtonX+250 && mouseY > ButtonY && mouseY < ButtonY+100 && mousePressed && text=="X Images")
  {
    Ximages=Ximages-100;
    if (Ximages<0) {
      Ximages=0;
    }
    delay(100);
    // fill(80, 250, 255);
    // rect(ButtonX+125, ButtonY, 125, 100, 25);
  }
}
