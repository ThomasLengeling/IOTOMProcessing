/*
Custom Face object
Array of vertices
*/
class Face{
  ArrayList<Vertex> vertices;
  color     col;
  int       id;
  
  Face(){
    vertices = new ArrayList<Vertex>();
    col = color(255);
  }
  
  
  //set new color 
  void setColor(color col){
    this.col = col;
  }
  
  void addVertex(Vertex v){
   vertices.add(v); 
  }
  

  //Draw Face 
  void drawFace(PGraphics pg){
    pg.pushStyle();
    
    pg.fill(col);
    pg.beginShape();
    for(Vertex vert : vertices){
      pg.vertex(vert.getX(), vert.getY(), vert.getZ());
    }
    pg.endShape(CLOSE);
    
    pg.popStyle();
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