void mousePressed() {
  if (mouseX > 65 && mouseX < 215 && mouseY > 250 && mouseY < 400) {
    playNum = 1;                                                     //if rock image is pressed, sets player's choice to rock
  }
  if (mouseX > 225 && mouseX < 375 && mouseY > 250 && mouseY < 400) {
    playNum = 2;                                                     //if paper image is pressed, sets player's choice to paper
  }
  if (mouseX > 385 && mouseX < 535 && mouseY > 250 && mouseY < 400) {
    playNum = 3;                                                     //if scissors image is pressed, sets player's choice to scissors
  }
}