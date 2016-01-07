/*
Vertex represents each face of a object
 - Center position (x, y, z)
 - Label  
 - Each Vertex/Face is paired with group and id -> face(group, id)
 */

class Vertex {
  //Center Position
  float posX;
  float posY;
  float posZ;

  //Face-group, Face-id
  String faceGroup;
  String faceId;

  //Name
  String label;

  Vertex(String label) {
    this.label = label;
  }
}