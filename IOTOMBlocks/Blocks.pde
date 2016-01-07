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
    faces.add(backFace);

    //Right
    Face rightFace = new Face();
    rightFace.addVertex(new Vertex(x, y, -z));
    rightFace.addVertex(new Vertex(x, y, z));
    rightFace.addVertex(new Vertex(x, -y, z));
    rightFace.addVertex(new Vertex(x, -y, -z));
    faces.add(rightFace);

    //Left
    Face leftFace = new Face();
    leftFace.addVertex(new Vertex(-x, y, z));
    leftFace.addVertex(new Vertex(-x, y, -z));
    leftFace.addVertex(new Vertex(-x, -y, -z));
    leftFace.addVertex(new Vertex(-x, -y, z));
    faces.add(leftFace);

    //bottom
    Face bottomFace = new Face();
    bottomFace.addVertex(new Vertex(x, -y, z));
    bottomFace.addVertex(new Vertex(-x, -y, z));
    bottomFace.addVertex(new Vertex(-x, -y, -z));
    bottomFace.addVertex(new Vertex(x, -y, -z));
    faces.add(bottomFace);

    //Top
    Face topFace = new Face();
    topFace.addVertex(new Vertex(x, y, -z));
    topFace.addVertex(new Vertex(-x, y, -z));
    topFace.addVertex(new Vertex(-x, y, z));
    topFace.addVertex(new Vertex(x, y, z));
    faces.add(topFace);

    //Front
    Face frontFace = new Face();
    frontFace.addVertex(new Vertex(x, y, z));
    frontFace.addVertex(new Vertex(-x, y, z));
    frontFace.addVertex(new Vertex(-x, -y, z));
    frontFace.addVertex(new Vertex(x, -y, z));
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