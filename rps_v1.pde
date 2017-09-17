// Alastair Watt
// 16001346
// RPS v1

PImage rockPic;
PImage paperPic;
PImage scissorsPic;             //create image variables

int playNum = 0;
int compNum = 0;                //set variables for choices

int winLoseDraw = 0;            //set variable for result

int playPoints = 0;
int compPoints = 0;             //set variables for points


void setup() {
  size(600, 600); 
  rockPic = loadImage("rock.png");
  paperPic = loadImage("paper.png");
  scissorsPic = loadImage("scissors.png");
}

void draw() {
  background(150, 230, 250);
  textSize(50);
  fill(0);
  text("Rock Paper Scissors", 60, 80);
  textSize(20);
  fill(0);
  text("To play Rock, press R", 170, 130);
  text("To play Paper, press P", 170, 150);
  text("To play Scissors, press S", 170, 170);
  text("Press W to see who wins", 170, 200);
  text("Press T to try again", 170, 220);

  image(rockPic, 65, 250, 150, 150);
  image(paperPic, 225, 250, 150, 150);
  image(scissorsPic, 385, 250, 150, 150);

  text("Player:", 150, 470);
  text("Computer:", 150, 500);

  text("Player Points:", 100, 590);
  text(playPoints, 235, 590);                  
  text("Computer Points:", 300, 590);
  text(compPoints, 475, 590);


  if (key == 'w') {                    //checks to see if w was pressed and if so displays player and computer choices and result
    if (playNum == 0) {
      text("Didn't play", 320, 470);
    }
    if (playNum == 1) {
      text("Rock", 320, 470);
    }
    if (playNum == 2) {
      text("Paper", 320, 470);
    }
    if (playNum == 3) {
      text("Scissors", 320, 470);
    }
    if (compNum == 1) {
      text("Rock", 320, 500);
    }
    if (compNum == 2) {
      text("Paper", 320, 500);
    }
    if (compNum == 3) {
      text("Scissors", 320, 500);
    }
    if (winLoseDraw == 0) {
      text("No contest", 250, 550);
    }
    if (winLoseDraw == 1) {
      text("Player Wins", 250, 550);
    }
    if (winLoseDraw == 2) {
      text("Computer Wins", 250, 550);
    }
    if (winLoseDraw == 3) {
      text("Draw", 290, 550);
    }
  }
}