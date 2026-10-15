 //declare bacteria variables here 
Bacteria [] colony;
void setup()   
 {     
 	//initialize bacteria variables here  
  size(1000,1000);
  colony = new Bacteria[100];
  for(int i=0; i<colony.length; i++)
  {
    colony[i] = new Bacteria((int)(Math.random()*5));
  }
 }   
 void draw()   
 {    
 	//move and show the bacteria   
  background(30, 30, 46);
  for (int i = 0; i < colony.length; i++){
    colony[i].walk();
    colony[i].show();
  }
 }  
 class Bacteria    
 {     
 	//lots of java!   
  int myX, myY, colo;
  Bacteria(int col) {
  //myX = myY = 500;
  myX = 500 + ((int)(Math.random()*50)-25);
  myY = 500 + ((int)(Math.random()*50)-25);
  if (col == 0) colo = color(166, 227, 161); //green
  else if (col == 1) colo = color(243, 139, 168); //red
  else if (col == 2) colo = color(249, 226, 175); //yellow
  else if (col == 3) colo = color(137, 180, 250); //blue
  else colo = color(203, 166, 247); //purple
  }
  void walk(){
    if(mouseX > myX){
      myX += (int)(Math.random()*5)-1;
    }else{
      myX += (int)(Math.random()*5)-3;
    }
    if(mouseY > myY){
      myY += (int)(Math.random()*5)-1;
    }else{
      myY += (int)(Math.random()*5)-3;
    }
  }
  void show(){
    //fill(166, 227, 161);
    //int picker = (int)(Math.random()*2);
    //if (picker == 0) fill(166, 227, 161);
    //else if (picker == 1) fill(243, 139, 168);
    noStroke();
    fill(colo, 64);
    ellipse(myX, myY, 20, 20);
    fill(colo, 128);
    ellipse(myX, myY, 15, 15);
    fill(colo);
    stroke(1);
    ellipse(myX, myY, 10, 10);
  }
 } 
