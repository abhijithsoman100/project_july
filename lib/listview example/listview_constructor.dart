import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.teal),
    home: ListView1(),
  ));
}

class ListView1 extends StatelessWidget {
  const ListView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: ListView(
        children: const [
          Card(
              child: ListTile(
            leading: Icon(Icons.people_alt_rounded),
            title: Text('Product 1'),
            subtitle: Text("This is a sample subtitle"),
            trailing: Text('10.15'),
          )),
          Card(
              child: ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.pexels.com/photos/1674666/pexels-photo-1674666.jpeg?auto=compress&cs=tinysrgb&w=600"),
            ),
            title: Text('Product 1'),
            subtitle: Text("This is a sample subtitle"),
            trailing: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('10.15'),
                CircleAvatar(
                  minRadius: 6,
                  maxRadius: 12,
                  child: Text('2'),
                )
                ]),
          )),
          Card(child: ListTile(title: Text('Product 1'))),
          Card(child: ListTile(title: Text('Product 1'))),
          Card(child: ListTile(title: Text('Product 1'))),
        ],
      ),
    );
  }
}
