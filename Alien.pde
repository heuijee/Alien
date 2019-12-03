class Alien {
  float sizeScale;
  float xCenter, yCenter;
  PShape alien, body, head, lefteye, righteye, leftleg, rightleg;
  color leftColor, rightColor;

  Alien(float scale) {
    sizeScale = scale;
    xCenter = width / 2;
    yCenter = height / 2;

    //Initialize the PShape objects
    alien = createShape(GROUP);
    body = createShape();
  }

  PShape drawBody() {
    body.beginShape();
    body.fill(100);
    body.vertex(-25, -100);
    body.vertex(25, -100);
    body.vertex(25, 100);
    body.vertex(-25, 100);
    body.endShape();

    return body;
  }

  PShape drawHead() {
    head = createShape(ELLIPSE, 0, -125, 150, 150);
    head.setFill(255);

    return head;
  }

  PShape drawLefteye(color leftColor) {
    lefteye = createShape(ELLIPSE, -75 / 2 - 10, -125, 50, 75);
    lefteye.setFill(leftColor);

    return lefteye;
  }

  /*
  void setLeftColor(color lc) {
   leftColor = lc;
   }
   */

  PShape drawRighteye(color rightColor) {
    righteye = createShape(ELLIPSE, 75 / 2 + 10, -125, 50, 75);
    righteye.setFill(rightColor);

    return righteye;
  }

  /*
  void setRightColor(color rc) {
   rightColor = rc;
   }
   
   void setEyesColor(color cl) {
   leftColor = cl;
   rightColor = cl;
   }
   */

  PShape drawLeftleg() {
    leftleg = createShape(LINE, -25, 100, -50, 150);
    leftleg.setStroke(color(0));

    return leftleg;
  }

  PShape drawRightleg() {
    rightleg = createShape(LINE, 25, 100, 50, 150);
    leftleg.setStroke(color(0));

    return rightleg;
  }

  void setScale(float scale) {
    alien.scale(scale);
  }

  float[] getCenterPoint() {
    float[] center = {xCenter, yCenter};

    return center;
  }

  //draw the alien, color of both eyes are set to default color
  void drawAlien() {
    //Add pieces to the alien
    alien.addChild(drawBody());
    alien.addChild(drawHead());
    alien.addChild(drawLefteye(leftColor));
    alien.addChild(drawRighteye(rightColor));
    alien.addChild(drawLeftleg());
    alien.addChild(drawRightleg());

    //Draw the alien
    shape(alien, xCenter, yCenter);
  }

  //Translate to (x, y), color of both eyes are set to default color 
  void drawAlien(float x, float y) {
    //Add pieces to the alien
    alien.addChild(drawBody());
    alien.addChild(drawHead());
    alien.addChild(drawLefteye(leftColor));
    alien.addChild(drawRighteye(rightColor));
    alien.addChild(drawLeftleg());
    alien.addChild(drawRightleg());

    //Draw the alien
    shape(alien, x, y);
  }

  //version of drawAlien which color of left eye and right eye can be set independently
  void drawAlien(color lc, color rc) {
    //Add pieces to the alien
    alien.addChild(drawBody());
    alien.addChild(drawHead());
    alien.addChild(drawLefteye(lc));
    alien.addChild(drawRighteye(rc));
    alien.addChild(drawLeftleg());
    alien.addChild(drawRightleg());

    //Draw the alien
    shape(alien, xCenter, yCenter);
  }

  //Scale myAlien
  void scaleAlien(float scale) {
    myAlien.setScale(scale);
  }
}