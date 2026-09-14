//special stuff >>>

//PShape cat, leftear, rightear, head, lefteye, righteye;

//void setup() {
//  size(500, 500);

//  cat = createShape(GROUP);
  
//  leftear = createShape(TRIANGLE, 100, 100, 120, 120, 140, 100);
//  leftear.setFill(color(0));
//  rightear = createShape(TRIANGLE, 160, 100, 180, 120, 200, 100);
//  rightear.setFill(color(0));
//  head = createShape(RECT, 50, 100, 150, 100);
//  head.setFill(color(0));
//  lefteye = createShape(RECT, 100, 140, 30, 30);
//  lefteye.setFill(color(255));
//  righteye = createShape(RECT, 140, 140, 30, 30);
//  righteye.setFill(color(255));
  
//  cat.addChild(leftear);
//  cat.addChild(rightear);
//  cat.addChild(head);
//  cat.addChild(lefteye);
//  cat.addChild(righteye);
//}
//void draw() {
//  shape(cat);
//}

size(500, 500);

int xLEar1, yLEar1, xLEar2, yLEar2, xLEar3, yLEar3, xREar1, yREar1, xREar2, yREar2, xREar3, yREar3, xrect, yrect, xLEye, yLEye, xREye, yREye;
xLEar1 = 50;
yLEar1 = 50;
xLEar2 = 70;
yLEar2 = 10;
xLEar3 = 90;
yLEar3 = 50;
xREar1 = 150;
yREar1 = 50;
xREar2 = 170;
yREar2 = 10;
xREar3 = 190;
yREar3 = 50;
xrect = 50;
yrect = 50;
xLEye = 75;
yLEye = 75;
xREye = 125;
yREye = 75;

fill(0);
triangle(xLEar1, yLEar1, xLEar2, yLEar2, xLEar3, yLEar3);
fill(0);
triangle(xREar1, yREar1, xREar2, yREar2, xREar3, yREar3);
fill(0);
rect(xrect, yrect, 200, 100);
fill(255);
square(xLEye, yLEye, 30);
fill(255);
square(xREye, yREye, 30);
