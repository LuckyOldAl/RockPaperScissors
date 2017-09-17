void keyPressed() {
  if (key == 'r') {
    playNum = 1;                                      //if r is pressed, sets player's choice to rock
  }
  if (key == 'p') {
    playNum = 2;                                      //if p is pressed, sets player's choice to paper
  }
  if (key == 's') {
    playNum = 3;                                      // if s is pressed, sets player's choice to scissors
  }
  if (key == 't') {
    playNum = 0;
    compNum = 0;
    winLoseDraw = 0;                                  //try again resets variables
  }
  if (key == 'w') { 
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