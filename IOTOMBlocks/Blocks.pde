/*
Back   -> blues
Right  -> red
Left   -> green
Bottom -> yellow
Top    -> purple
Front  -> aqua
*/
class Block {
  ArrayList<Face> faces;
  float lengthX;
  float lengthY;
  float lengthZ;

  float posX;
  float posY;
  float posZ;

  Block(float x, float y, float z) {
    faces = new ArrayList<Face>();
    
    //Back
    Face backFace = new Face();
    backFace.addVertex(new Vertex(x, -y, -z));
    backFace.addVertex(new Vertex(-x, -y, -z));
    backFace.addVertex(new Vertex(-x, y, -z));
    backFace.addVertex(new Vertex(x, y, -z));
    backFace.setColor(color(0, 0, 255));
    faces.add(backFace);

    //Right
    Face rightFace = new Face();
    rightFace.addVertex(new Vertex(x, y, -z));
    rightFace.addVertex(new Vertex(x, y, z));
    rightFace.addVertex(new Vertex(x, -y, z));
    rightFace.addVertex(new Vertex(x, -y, -z));
    rightFace.setColor(color(255, 0, 0));
    faces.add(rightFace);

    //Left
    Face leftFace = new Face();
    leftFace.addVertex(new Vertex(-x, y, z));
    leftFace.addVertex(new Vertex(-x, y, -z));
    leftFace.addVertex(new Vertex(-x, -y, -z));
    leftFace.addVertex(new Vertex(-x, -y, z));
    leftFace.setColor(color(0, 255, 0));
    faces.add(leftFace);

    //bottom
    Face bottomFace = new Face();
    bottomFace.addVertex(new Vertex(x, -y, z));
    bottomFace.addVertex(new Vertex(-x, -y, z));
    bottomFace.addVertex(new Vertex(-x, -y, -z));
    bottomFace.addVertex(new Vertex(x, -y, -z));
    bottomFace.setColor(color(255, 255, 0));
    faces.add(bottomFace);

    //Top
    Face topFace = new Face();
    topFace.addVertex(new Vertex(x, y, -z));
    topFace.addVertex(new Vertex(-x, y, -z));
    topFace.addVertex(new Vertex(-x, y, z));
    topFace.addVertex(new Vertex(x, y, z));
    topFace.setColor(color(255, 0, 255));
    faces.add(topFace);

    //Front
    Face frontFace = new Face();
    frontFace.addVertex(new Vertex(x, y, z));
    frontFace.addVertex(new Vertex(-x, y, z));
    frontFace.addVertex(new Vertex(-x, -y, z));
    frontFace.addVertex(new Vertex(x, -y, z));
    frontFace.setColor(color(0, 255, 255));
    faces.add(frontFace);

    lengthX = x;
    lengthY = y;
    lengthZ = z;
  }


  void drawBlock(PGraphics pg) {
    for (Face face : faces) {
      face.drawFace(pg);
    }
  }

  void setPosition(float x, float y, float z) {
    this.posX = x;
    this.posY = y;
    this.posZ = z;
  }

  float getPosX() {
    return posX;
  }

  float getPosY() {
    return posY;
  }

  float getPosZ() {
    return posZ;
  }
  
}