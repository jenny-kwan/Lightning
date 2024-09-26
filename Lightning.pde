int startX = 250, startY = 100, endX = 250, endY = 100;

void setup() {
  size(500, 500);
  strokeWeight(2);
  background(219, 242, 255);
  drawCloud();
}

void draw() {
  stroke(random(255), random(255), random(255));
  
  while (endY < height) {
    endX = startX + int(random(-9, 9));
    endY = startY + int(random(10));
    
    line(startX, startY, endX, endY);
    
    startX = endX;
    startY = endY;
  }
}

void drawCloud() {
  fill(255,255,255);
  noStroke();

  ellipse(250, 50, 200, 100); // Main body
  ellipse(180, 70, 150, 80); // Left puff
  ellipse(320, 70, 150, 80); // Right puff
  ellipse(250, 90, 180, 100); // Bottom puff
  
  fill(0);
  ellipse (200,60,20,30); // Left eye
  ellipse (300,60,20,30); // Right eye
  ellipse (250,100,20,20); // Mouth
  
  fill(255, 204, 204);
  ellipse (320,80,20,10); // Blush
  ellipse (180,80,20,10); // Blush
}

void mousePressed() {
  startX = width / 2;
  startY = 100; // Start below the cloud
  endX = width / 2;
  endY = 100;
  background(219, 242, 255);
  
  drawCloud();
}
