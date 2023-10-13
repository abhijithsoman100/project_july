import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_july/paasing%20data%20between%20screens/using%20navigator/dummy%20data.dart';

class ProductDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var id = ModalRoute.of(context)?.settings.arguments;
    var product = products.firstWhere((product) => product['id']== id);


    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(product['image'],height: 200,width: 200,),
            Text(product['name'],style: GoogleFonts.fragmentMono(fontSize: 30),),
            Text(product['rating'],style: TextStyle(fontSize: 15),),
            Text('${product['price']}',style: TextStyle(fontSize: 15),),
            Text(product['description'],style: TextStyle(fontSize: 15),)
          ],
        ),
      ),
    ) ;
  }
}
