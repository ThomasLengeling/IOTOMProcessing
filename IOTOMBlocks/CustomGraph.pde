
void createCustomGraph() {

  DirectedGraph<GVertex, GEdge> directedGraph;
  directedGraph = new DefaultDirectedGraph<GVertex, GEdge>(GEdge.class);

  //line 4 blocks
  //4 blocks x 6 faces
  for (int i = 0; i < 4; i++) {
    for (int j = 0; j < 6; j++) {
      String group =  "g0"+i;
      int faceId = j;
      GVertex gVert = new GVertex(group, faceId);
      directedGraph.addVertex(gVert);
    }
  }

  //print graph
  GVertex vertices [] = (GVertex [])directedGraph.vertexSet().toArray(new GVertex[0]);
  
  int i = 0;
  for (GVertex gVert : vertices) {
    println(i+": "+gVert.faceGroup+" "+gVert.faceId);
    i++;
  }
  
}