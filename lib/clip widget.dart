import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
void main(){
  runApp(MaterialApp(
    home: ClipWidget(),
  ));
}
class ClipWidget extends StatelessWidget {
  const ClipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ///clipRect
          ClipRRect(
            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: Image.network("https://images.unsplash.com/photo-1450101499163-c8848c66ca85?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"),
                heightFactor: .4,
                widthFactor: .4,
              ),
            ),
          ),
          ClipPath(
          clipper: StarClipper(8),
    child: Container(
      child:Image.network("https://images.unsplash.com/photo-1450101499163-c8848c66ca85?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80"),
    height: 450,
    color: Colors.indigo,
    ),

          )],
      ),
    );
  }
}
