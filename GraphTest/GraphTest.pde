import java.util.List;
import java.util.Set;

import org.jgrapht.alg.*;
import org.jgrapht.*;
import org.jgrapht.graph.*;

void setup() {
  size(1024, 768);

  DirectedGraph<Vertex, Edge> directedGraph;
  directedGraph = new DefaultDirectedGraph<Vertex, Edge>(Edge.class);

  createDirectedGraph(directedGraph);

  computeConnections(directedGraph);
}


void draw() {
}


void createDirectedGraph(DirectedGraph<Vertex, Edge> directedGraph) {

  Vertex av = new Vertex("b");
  Vertex bv = new Vertex("b");
  Vertex cv = new Vertex("c");

  directedGraph.addVertex(av);
  directedGraph.addVertex(bv);
  directedGraph.addVertex(cv);

  directedGraph.addEdge(av, bv, new Edge(av, bv));
  directedGraph.addEdge(bv, cv, new Edge(bv, cv));
  directedGraph.addEdge(bv, cv, new Edge(bv, cv));
}



void computeConnections(DirectedGraph<Vertex, Edge> directedGraph) {
  // Prints the shortest path from vertex i to vertex c. This certainly
  // exists for our particular directed graph.
  Vertex vertex0  = (Vertex)directedGraph.vertexSet().toArray()[0];
  Vertex vertex2  = (Vertex)directedGraph.vertexSet().toArray()[2];

  System.out.println("Shortest path from: "+vertex0.label+" to "+vertex2.label);
  
  List path = DijkstraShortestPath.findPathBetween(directedGraph, vertex0, vertex2);

  for (int i = 0; i < path.size(); i++) {
    Edge e = ((Edge)path.get(i));
    println( e.v0.label+" "+e.v1.label);
  }

}