import 'dart:async';
import 'dart:math';
import 'package:arrow_path/arrow_path.dart';
import 'package:flutter/material.dart';
import 'draw_graph.dart';
import 'graph_app.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Graph Algorithms Application',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: GraphApp(),
    );
  }
}
