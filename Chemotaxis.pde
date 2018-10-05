Bacteria[] coo; 
 void setup()   
 {     
   size(500,500);
   coo = new Bacteria[197];
   for(int i = 0; i < coo.length; i++){
     coo[i] = new Bacteria();
   }
   frameRate(40);
 }   
 void draw()   
 {    
   background(0);
   for(int i = 0; i < coo.length; i++){
     coo[i].move();
     coo[i].show();
   }
   fill(125, 150, 200);
   ellipse(250, 250, 40, 40);
 }  
 void mouseClicked(){
   coo = new Bacteria[100];
   for(int i = 0; i < coo.length; i++){
     coo[i] = new Bacteria();
   }
 }
 class Bacteria    
 {     
   int x, y;
   int colors;
   Bacteria(){
      x = (int)(Math.random()*500);
      y = (int)(Math.random()*500);
      colors = color(((int)(Math.random()*155)+100),((int)(Math.random()*155)+100),((int)(Math.random()*155)+100));
   }
   void show(){
     fill(colors);
     noStroke();
     ellipse(x, y, 10, 10);
   }
   void move(){
     colors = color(((int)(Math.random()*155)+100),((int)(Math.random()*155)+100),((int)(Math.random()*155)+100));
     if(x < 250){
       x = x + (int)(Math.random()*4);
     }else if(x > 250){
       x = x - (int)(Math.random()*4);
     }else{
       x = 250;
     }
     
     if(y < 250){
       y = y + (int)(Math.random()*4);
     }else if(y > 250){
       y = y - (int)(Math.random()*4);
     }else{
       y = 250;
     }
   }
 }    
