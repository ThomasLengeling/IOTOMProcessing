/*
Edge union between two Vertex.

Here we can define the variable to calculate the optimal heuristic to connect vertices 
*/
class GEdge extends DefaultEdge {
  GVertex v0;
  GVertex v1;
  
  float distance;

  GEdge(GVertex v0, GVertex v1) {
    this.v0 = v0;
    this.v1 = v1;
  }
  
}