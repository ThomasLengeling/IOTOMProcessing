/*
IOTOM Block Simulation
Libraries dependencies 

*/


BlockManager iotoms;


void setup(){
  size(1280, 720);
  
  iotoms = new BlockManager();
  
  //add new block with a size
  iotoms.addBox(1, 1, 1);
  
  
}


void draw(){
  background(0);
  
}