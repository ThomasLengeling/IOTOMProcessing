/*
Custom Face object
Array of vertices
*/
class Face{
  ArrayList<Vertex> vertices;
  color     col;
  int       id;
  
  Face(int id){
    vertices = new ArrayList<Vertex>();
    col = color(255);
    this.id = id;
  }
  
  
  //set new color 
  void setColor(color col){
    this.col = col;
  }
  
  void addVertex(Vertex v){
   vertices.add(v); 
  }
  

  //Draw Face 
  void drawFace(){
    pushStyle();
    
    fill(col);
    beginShape();
    for(Vertex vert : vertices){
      vertex(vert.getX(), vert.getY(), vert.getZ());
    }
    endShape(CLOSE);
    
    popStyle();
  }
  
 
  //Draw Vertices
  void drawVertices(){
    pushStyle();
    stroke(col);
    
    beginShape();
    for(Vertex vert : vertices){
      vertex(vert.getX(), vert.getY(), vert.getZ());
    }
    endShape();
    
    popStyle();
  }
  
}