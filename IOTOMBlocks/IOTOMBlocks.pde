/*
IOTOM Block Simulation
 
 Penny Webb
 Manisha Mohan
 HyeJi Yang
 Thomas Sanchez Lengeling
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
  //clean background
  mainScene.fill(0, 250);
  mainScene.rect(0, 0, mainScene.width, mainScene.height);
  mainScene.pushMatrix();
  mainScene.translate(width/2.0, height/2.0, 250);


  rotateScene(mainScene);

  drawSurface();
  drawIOTOMS();


  mainScene.popMatrix();
  mainScene.endDraw();
}

void drawIOTOMS() {
  mainScene.pushMatrix();
  mainScene.translate(0, -60, 0);
  iotoms.drawBlocks(mainScene);
  mainScene.popMatrix();
}


void drawSurface() {
  mainScene.pushMatrix();
  mainScene.translate(-100, -100, -90);

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      float tam = 30;

      mainScene.fill(100, 100, 100);
      mainScene.beginShape();
      mainScene.vertex( tam + i*tam, tam, -tam + j*tam);
      mainScene.vertex(-tam + i*tam, tam, -tam + j*tam);
      mainScene.vertex(-tam + i*tam, tam, tam + j*tam);
      mainScene.vertex( tam + i*tam, tam, tam + j*tam);
      mainScene.endShape(CLOSE);
    }
  }
  mainScene.popMatrix();
}

void renderGuiScene() {
  guiScene.beginDraw();
  guiScene.noStroke();
  guiScene.background(0, 0);
  //clean background
  guiScene.fill(50, 150);
  guiScene.rect(0, 0, guiScene.width, guiScene.height);
  guiScene.endDraw();
}

void drawScenes() {
  image(mainScene, 0, 0);
  image(guiScene, 0, 0);
}


void rotateScene(PGraphics pg) {
  pg.rotateY(map(mouseX, 0, width, -PI, PI));
  pg.rotateX(map(mouseY, 0, height, -PI, PI));
}