
PVector start = new PVector(250, 250); // Start point of the arm
PVector goal = new PVector(350, 100); // Point to go on
Arm arm = new Arm(4, start, goal);

void setup()
{
  size(500, 500);
  
  // Set shafts length
  arm.setShaftLength(0, 50);
  arm.setShaftLength(1, 100);
  arm.setShaftLength(2, 75);
  // init points
  arm.updatePoint();
}

void draw()
{
  background(0);
  stroke(255);
  
  // set goal to mouse pos
  goal = new PVector(mouseX, mouseY);
  
  // move points
  arm.fit(1);
  arm.setGoal(goal);

  // Draw goal in green
  strokeWeight(15);
  stroke(0, 0, 255);
  point(goal.x, goal.y);
  
  // Draw start in blue
  stroke(0, 255, 0);
  point(start.x, start.y);
  
  // Draw arm
  arm.draw();
}