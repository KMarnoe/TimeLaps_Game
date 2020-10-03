void GameMenu()
{  
  fill(50, 50, 50);
  rect(XMenu, 150, 500, 400, 25);
  textSize(50);
  fill(255);
  text("ISO = "+iso, XMenu, 200);
  text("EXPO TIME = "+Expo+" Sec", XMenu, 300);
  text("X  Images = "+Ximages, XMenu, 400);

  //Place Buttons to control the game
  DrawButton("ISO", 75, 900);
  DrawButton("EXPO TIME", 475, 900);
  DrawButton("X Images", 875, 900);
  
  
}
