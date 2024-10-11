Die die;   
int grandTotal = 0;
  void setup()
  {
      noLoop();
      size(720,720);  
      textAlign(CENTER,CENTER);
      background(0);
  }
  void draw()
  {
      background(0);
      fill(255);
      int x = 5;
      int y = 5;
      int s = 60;
      int c = 10;
      grandTotal = 0;
      while(y<610){
        while(x<700){
        die = new Die(x,y,s,c);
        die.roll();
        die.show();
        grandTotal += die.rand;
        x+=70;
      }
        x=5;
        y+=70;
      }
      textSize(48);
      fill(255);
      text("Total: "+grandTotal, 360, 670);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX, myY, mySize, myCurve, rand;
      
      Die(int x, int y, int s, int c) //constructor
      {
          myX = x;
          myY =y;
          mySize=s;
          myCurve=c;
      }
      void roll()
      {
          rand = (int)(Math.random()*6)+1;
          //String shown = str(rand);
          
      }
      void show()
      {
         
         fill(255);
         rect(myX,myY,mySize,mySize,myCurve);
         fill(#000000);
         /*ellipse(myX+(mySize*.25),myY+(mySize*.25),10,10);
         ellipse(myX+(mySize*.5),myY+(mySize*.25),10,10);
         ellipse(myX+(mySize*.75),myY+(mySize*.25),10,10);
         ellipse(myX+(mySize*.25),myY+(mySize*.75),10,10);
         ellipse(myX+(mySize*.5),myY+(mySize*.75),10,10);
         ellipse(myX+(mySize*.75),myY+(mySize*.75),10,10);*/
         if(rand==1){
           ellipse(myX+(mySize*.5),myY+(mySize*.5),10,10);}
         else if(rand==2){
           ellipse(myX+(mySize*.25),myY+(mySize*.25),10,10);
           ellipse(myX+(mySize*.75),myY+(mySize*.75),10,10);}
         else if(rand==3){
           ellipse(myX+(mySize*.25),myY+(mySize*.25),10,10);
           ellipse(myX+(mySize*.5),myY+(mySize*.5),10,10);
           ellipse(myX+(mySize*.75),myY+(mySize*.75),10,10);}
         else if(rand==4){
           ellipse(myX+(mySize*.25),myY+(mySize*.25),10,10);
           ellipse(myX+(mySize*.75),myY+(mySize*.25),10,10);
           ellipse(myX+(mySize*.25),myY+(mySize*.75),10,10);
           ellipse(myX+(mySize*.75),myY+(mySize*.75),10,10);}
         else if(rand==5){
           ellipse(myX+(mySize*.5),myY+(mySize*.5),10,10);
           ellipse(myX+(mySize*.25),myY+(mySize*.25),10,10);
           ellipse(myX+(mySize*.75),myY+(mySize*.25),10,10);
           ellipse(myX+(mySize*.25),myY+(mySize*.75),10,10);
           ellipse(myX+(mySize*.75),myY+(mySize*.75),10,10);}
         else{
           ellipse(myX+(mySize*.25),myY+(mySize*.25),10,10);
           ellipse(myX+(mySize*.5),myY+(mySize*.25),10,10);
           ellipse(myX+(mySize*.75),myY+(mySize*.25),10,10);
           ellipse(myX+(mySize*.25),myY+(mySize*.75),10,10);
           ellipse(myX+(mySize*.5),myY+(mySize*.75),10,10);
           ellipse(myX+(mySize*.75),myY+(mySize*.75),10,10);
         }
         
      }
  }
