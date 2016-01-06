/*
IOTOM Block Simulation
 Libraries dependencies 
 
 */


BlockManager iotoms;

//Main scene of the blocks
PGraphics mainScene;

//GUI scene for selecting the Scene
PGraphics guiScene;

int widthGuiScene = 300;


void setup() {
  size(1280, 720, P3D);


  mainScene = createGraphics(1280, 720, P3D);
  guiScene  = createGraphics(widthGuiScene, 720, P3D);

  iotoms = new BlockManager();

  //add new block with a size
  iotoms.addBox(10, 10, 10);
}


void draw() {
  background(0);

  //just render the scenes
  renderMainScene();
  renderGuiScene();
  
  //draw the actual scenes
  drawScenes();
}

void renderMainScene() {
  mainScene.beginDraw();
  mainScene.background(0);
  mainScene.pushMatrix();
  mainScene.translate(width/2.0, height/2.0, 200);

  rotateScene(mainScene);
  iotoms.drawBlocks(mainScene);
  mainScene.popMatrix();

  mainScene.endDraw();
}

void renderGuiScene() {
  
  
}

void drawScenes() {
  image(guiScene, 0, 0);
  image(mainScene, 0, 0);
}


void rotateScene(PGraphics pg) {
  pg.rotateY(map(mouseX, 0, width, -PI, PI));
  pg.rotateX(map(mouseY, 0, height, -PI, PI));
}