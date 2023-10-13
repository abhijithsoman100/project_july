import 'package:flutter/material.dart';
import 'package:project_july/custom%20widget/refractoring%20widget.dart';


void main(){
  runApp(MaterialApp(home: Grid_using_refractoring_widget(),));
}
class Grid_using_refractoring_widget extends StatelessWidget {
  const Grid_using_refractoring_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid with Refractoring widget"),
      ),
      body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 15,crossAxisSpacing: 15),
        children: [
          reafractoring_widget(
            image: const NetworkImage('https://images.unsplash.com/photo-1450101499163-c8848c66ca85?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80'),
            text: 'My Product',
             click: () {  },
            click1: () {  },
          )
        ],),
      
    );
  }
}
