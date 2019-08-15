int[] array = new int[6];
   void setup() {
     size(800, 600);
     for (int i=0; i<array.length; i++) {
       array[i] = (int)random(8,150);
     }
     frameRate(6);
   }
   int i=0;
   int temp;
   void draw() {
     background(255);
     for (int j=0; j<array.length; j++) {
       if (array[i]<array[j]) {
         temp = array[j];
         array[j] = array[i];
         array[i] = temp;
       }
        stroke(0);
       //strokeWeight(2);
       fill  (63,73,149);
       rect(125*j, j+450,50,-array[j]);
       fill(255, 0, 0);
       text(array[j], 127*j, 150+j); //<>//
     }
     i++;  
     if (i>array.length-1)
       noLoop();
   }
