import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class reafractoring_widget extends StatelessWidget {
  NetworkImage? image;
  String? text;
  IconData? icon;
  VoidCallback? click;
  VoidCallback? click1;


  reafractoring_widget(
  {required this.image,
  required this.text,
  required this.click,
    this.icon,
  required this.click1}
      );



  @override
  Widget build(BuildContext context) {
    return  Card(
      child: Column(
        children: [
          Image(image: image!),
          Text(text!,style: GoogleFonts.satisfy(fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic)
            ,),
         // Icon(icon! as IconData?,size: 15,color: Colors.white,),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: click,
                  child: Icon(Icons.shopping_cart)),
              SizedBox(width: 20,),
              ElevatedButton(onPressed: click1, child: const Text("Buy Now"))
            ],
          )


        ],
      ),
    );
  }
}
