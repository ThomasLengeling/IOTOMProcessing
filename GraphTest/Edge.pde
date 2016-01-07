/*
Edge union between two Vertex.

Here we can define the variable to calculate the optimal heuristic to connect vertices 
*/
class Edge extends DefaultEdge {
  Vertex v0;
  Vertex v1;
  
  float distance;

  Edge(Vertex v0, Vertex v1) {
    this.v0 = v0;
    this.v1 = v1;
  }
}