Boolean overlapCheck() {
  for (int i = 0; i < stars.length; i++) {
      float xValue = stars[i].getX();
      float yValue = stars[i].getY();
      float radiusValue = stars[i].getRadius();
      for (int j = stars.length-1-i; j < stars.length; j++) {
        while (xValue < stars[j].getRadius() || width-xValue < stars[j].getRadius()) {
          xValue = random (radiusValue, width-radiusValue);
        }
        while (yValue < radiusValue || height-yValue < radiusValue) {
          yValue = random (radiusValue, width-radiusValue);
        }
      } //Nested FOR
    } //FOR Loop
    return false;
} //End overlapCheck()
