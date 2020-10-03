
void DrawButton(String text, int ButtonX, int ButtonY) //NTS HOW TO JUSE COMMAND DRAWBUTTON: DrawButton("TEXT TO BE SHOWN",PLACEMENT IN X & Y NORTH WEST CORNER//
{
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
  
  //*************************************************************READ BUTTONS ISO*****************************************************************************************//
  
   if (mouseX > ButtonX && mouseX < ButtonX+125 && mouseY > ButtonY && mouseY < ButtonY+100 && mousePressed && text=="ISO")
  {
   iso=iso+10;
  if(iso==3200)
  {
 iso=iso-10;
  }
   delay(10);
    //fill(255, 250, 80);
    //rect(ButtonX, ButtonY, 125, 100, 25);
  }
    if (mouseX > ButtonX+125 && mouseX < ButtonX+250 && mouseY > ButtonY && mouseY < ButtonY+100 && mousePressed && text=="ISO")
  {
    iso=iso-10;
    if(iso<0){
    iso=0;
    }
    
   
    delay(10);
   // fill(80, 250, 255);
   // rect(ButtonX+125, ButtonY, 125, 100, 25);
  }
    //*************************************************************READ BUTTONS EXPO*****************************************************************************************//
   if (mouseX > ButtonX && mouseX < ButtonX+125 && mouseY > ButtonY && mouseY < ButtonY+100 && mousePressed && text=="EXPO TIME")
  {
   Expo=Expo+1;
   delay(10);
    //fill(255, 250, 80);
    //rect(ButtonX, ButtonY, 125, 100, 25);
  }
    if (mouseX > ButtonX+125 && mouseX < ButtonX+250 && mouseY > ButtonY && mouseY < ButtonY+100 && mousePressed && text=="EXPO TIME")
  {
    Expo=Expo-1;
    if(Expo<0){
    Expo=0;
    }
    delay(10);
   // fill(80, 250, 255);
   // rect(ButtonX+125, ButtonY, 125, 100, 25);
  }
  
    //*************************************************************READ BUTTONS X IMAGES*****************************************************************************************//
   if (mouseX > ButtonX && mouseX < ButtonX+125 && mouseY > ButtonY && mouseY < ButtonY+100 && mousePressed && text=="X Images")
  {
   Ximages=Ximages+1;
   delay(10);
    //fill(255, 250, 80);
    //rect(ButtonX, ButtonY, 125, 100, 25);
  }
    if (mouseX > ButtonX+125 && mouseX < ButtonX+250 && mouseY > ButtonY && mouseY < ButtonY+100 && mousePressed && text=="X Images")
  {
    Ximages=Ximages-1;
    if(Ximages<0){
    Ximages=0;
    }
    delay(10);
   // fill(80, 250, 255);
   // rect(ButtonX+125, ButtonY, 125, 100, 25);
  }
}
