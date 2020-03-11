import 'package:flutter/material.dart';
import 'draw_graph.dart';
import 'adjacency_matrix.dart';
class GraphApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _GraphApp();
  }
}
class _GraphApp extends State<GraphApp>{
  int indexTap = 0;
  static int size = 0;
  static List<int> edge1 = List<int>();
  static List<int> edge2 = List<int>();
  static List<String> nameNode = List<String>();
  static List<String> nameEdge = List<String>();
  static DrawPage drawPage = DrawPage();
  static AdjacencyMatrix matrix = AdjacencyMatrix(edge1, edge2, size,nameNode,nameEdge);
  final List<Widget> widgetsChildren = [drawPage,matrix];
  void onTapTapped(int index){
    setState(() {
      indexTap = index;
      edge1 = drawPage.edge1;
      edge2 = drawPage.edge2;
      size = drawPage.px.length;
      nameNode = drawPage.nameNode;
      nameEdge = drawPage.nameEdge;
      matrix.setSize(size);
      matrix.setEdge1(edge1);
      matrix.setEdge2(edge2);
      matrix.setNameEdge(nameEdge);
      matrix.setNameNode(nameNode);
      print("Nodes Size");
      print(size);
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.blue
        ),
        child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.color_lens),
            title: Text("Dibujar Grafo")
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_to_photos),
              title: Text("Matriz de Adyacencia")
          ),
        ]),
      ),
    );
  }

}