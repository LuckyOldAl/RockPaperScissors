// Alastair Watt
// 16001346
// RPS v3

PImage rockPic;
PImage paperPic;
PImage scissorsPic;             //create image variables

int playNum = 0;
int compNum = 0;                //set variables for choices

int winLoseDraw = 0;            //set variable for result

int playPoints = 0;
int compPoints = 0;             //set variables for points


void setup() {
  size(600, 700); 
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
  text("To play Rock, press R or click the rock", 70, 130);
  text("To play Paper, press P or click the paper", 70, 150);
  text("To play Scissors, press S or click the scissors", 70, 170);
  text("To see who wins, press W or click Play", 70, 200);
  text("To try again, press T or click Try Again", 70, 220);

  image(rockPic, 65, 250, 150, 150);
  image(paperPic, 225, 250, 150, 150);
  image(scissorsPic, 385, 250, 150, 150);

  rect(65, 420, 225, 100);
  rect(310, 420, 225, 100);
  textSize(40);
  fill(255);
  text("Play", 140, 485);
  text("Try Again", 330, 485);

  textSize(20);
  fill(0);
  text("Player:", 150, 570);
  text("Computer:", 150, 600);

  text("Player Score:", 100, 690);
  text(playPoints, 235, 690);                  
  text("Computer Score:", 300, 690);
  text(compPoints, 475, 690);


  if (key == 'w') {                    //checks to see if w was last key pressed and if so displays player and computer choices and result
    if (playNum == 0) {
      text("Didn't play", 320, 570);
    }
    if (playNum == 1) {
      text("Rock", 320, 570);
    }
    if (playNum == 2) {
      text("Paper", 320, 570);
    }
    if (playNum == 3) {
      text("Scissors", 320, 570);
    }
    if (compNum == 1) {
      text("Rock", 320, 600);
    }
    if (compNum == 2) {
      text("Paper", 320, 600);
    }
    if (compNum == 3) {
      text("Scissors", 320, 600);
    }
    if (winLoseDraw == 0) {
      text("No contest", 250, 650);
    }
    if (winLoseDraw == 1) {
      text("Player Wins", 250, 650);
    }
    if (winLoseDraw == 2) {
      text("Computer Wins", 250, 650);
    }
    if (winLoseDraw == 3) {
      text("Draw", 250, 650);
    }
  }
}