/*
 GVertex represents each face of a object
 - Center position (x, y, z)
 - Label  
 - Each Vertex/Face is paired with group and id -> face(group, id)
 */

class GVertex {
  //Center Position
  float posX;
  float posY;
  float posZ;

  //Face-group, Face-id
  String faceGroup;
  int faceId;

  //Name
  String label;

  GVertex(String fg, int fi) {
    this.faceGroup = fg;
    this.faceId = fi;
  }
  
  void setLabel(String label){
   this.label = label; 
  }
  
}