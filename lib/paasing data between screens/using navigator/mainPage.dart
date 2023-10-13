import 'package:flutter/material.dart';
import 'package:project_july/paasing%20data%20between%20screens/using%20navigator/detailPage.dart';
import 'package:project_july/paasing%20data%20between%20screens/using%20navigator/dummy%20data.dart';
void main(){
  runApp(MaterialApp(
    home: ProductMain(),
  routes: {
      'details': (context) => ProductDetails(),
  },));
}
class ProductMain extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
      ),
      body: GridView(
      padding: const EdgeInsets.all(15),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) ,
      children: [
        InkWell(
          onTap: ()=> Navigator.of(context).pushNamed('details',arguments: products['id']),

        )
        Container(
          height: 100,
      ),

        ],),





    //   appBar: AppBar(title: Text("Products"),),
    // body: ListView(
    // padding: EdgeInsets.all(15),
    // children: products.map((products) => ListTile(
    // leading: Image.network(products['image']),
    // title: Text(products['name']),
    // subtitle: Text('${products['price']}\$'),
    // ))
    //     .toList(),
    // ),
    ) ;
  }
}
