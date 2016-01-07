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
float rotateMainSceneX = -3.06;
float rotateMainSceneY = -2.72;
float distanceZoom = 200;

//GUI scene for selecting the Scene
PGraphics guiScene;

int widthGuiScene = 300;


void setup() {
  size(1280, 720, P3D);

  smooth(8);

  mainScene = createGraphics(1280, 720, P3D);
  mainScene.smooth(8);
  guiScene  = createGraphics(widthGuiScene, 720, P3D);
  guiScene.smooth(8);

  iotoms = new BlockManager();

  //add new block
  Block box =  new Block(5, 5, 5); //10, 10, 10
  box.setPosition(0, 0, 0);   //center
  iotoms.addBox(box);

  Block box2 =  new Block(5, 5, 5);
  box2.setPosition(20, 0, 10);   //position
  iotoms.addBox(box2);

  //long block
  Block boxlong =  new Block(5, 5, 15);
  boxlong.setPosition(30, 0, 0);   //position
  iotoms.addBox(boxlong);
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
  mainScene.translate(width/2.0, height/2.0,  distanceZoom);


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
  mainScene.translate(-135, -95, -135);

  for (int i = 0; i < 10; i++) {
    for (int j = 0; j < 10; j++) {
      float tam = 30;

      mainScene.fill(70, 70, 70);
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
  if (mousePressed) {
    rotateMainSceneX =  map(mouseX, 0, width, -PI, -(6*PI)/8.0);
    rotateMainSceneY =  map(mouseY, 0, height, -PI, PI);
  }
  pg.rotateY(rotateMainSceneY);
  pg.rotateX(rotateMainSceneX);
}


void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  distanceZoom += e;
  println(distanceZoom);
}