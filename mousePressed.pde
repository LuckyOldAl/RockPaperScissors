void mousePressed() {
  if (mouseX > 65 && mouseX < 215 && mouseY > 250 && mouseY < 400) {
    key = 'r';
    playNum = 1;                                                     //if rock image is pressed, sets player's choice to rock
  }
  if (mouseX > 225 && mouseX < 375 && mouseY > 250 && mouseY < 400) {
    key = 'p';
    playNum = 2;                                                     //if paper image is pressed, sets player's choice to paper
  }
  if (mouseX > 385 && mouseX < 535 && mouseY > 250 && mouseY < 400) {
    key = 's';
    playNum = 3;                                                     //if scissors image is pressed, sets player's choice to scissors
  }
  if (mouseX > 310 && mouseX < 535 && mouseY > 420 && mouseY < 520) {
    key = 't';
    playNum = 0;
    compNum = 0;
    winLoseDraw = 0;                                                 //if try again button is pressed, resets variables
  }
  if (mouseX > 65 && mouseX < 290 && mouseY > 420 && mouseY < 520) {
    key = 'w';
    compNum = int(random(1, 4));                      //generates a random choice between 1 and 3 for the computer
  }
  if (playNum == 1 && compNum == 3 || playNum == 2 && compNum == 1 || playNum == 3 && compNum == 2) {
    winLoseDraw = 1;
    playPoints = playPoints + 1;                      //player win
  }
  if (playNum == 1 && compNum == 2 || playNum == 2 && compNum == 3 || playNum == 3 && compNum == 1) {
    winLoseDraw = 2;
    compPoints = compPoints + 1;                      //computer win
  }
  if (playNum == 1 && compNum == 1 || playNum == 2 && compNum == 2 || playNum == 3 && compNum == 3) {
    winLoseDraw = 3;                                  //draw
  }
}