import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: stackEx(),));
}
class stackEx extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stack Ex"),),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 500,
              width: 500,
              color: Colors.red,
            ),
            Positioned(
              top: 150,
              left: 150,
              child: Container(
                height: 300,
                width: 300,
                color: Colors.lime,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.lightBlue,
            )
          ],
        ),
      ),
    );
  }
}
