import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
void main(){
  runApp(MaterialApp(home: FiCard(),));
}
class FiCard  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30)),color: Colors.teal
            ),),
            Positioned(
              top: 80,
              left: 30,
              child: Row(
                children: [
                  Transform.rotate(
                      angle: 90*pi/180,
                      child: FaIcon(FontAwesomeIcons.simCard,color: Colors.grey,)),
                  const SizedBox(width: 5,),
                  Transform.rotate(
                      angle: 90*pi/180,
                      child: FaIcon(FontAwesomeIcons.wifi,color: Colors.grey,))
                ],
              ),
            ),

            Positioned(
              top: 190,
              left: 20,
              child: Text("ABHIJITH",
              style: GoogleFonts.courierPrime(fontSize: 20,color: Colors.grey),),
            ),
            Positioned(
              top: 190,
              right: 20,
              child: Text("VISA",
              style: GoogleFonts.libreBaskerville(
                fontWeight: FontWeight.bold,
                fontSize: 28,color: Colors.grey
              ),),
            ),
            Positioned(
              top: 10,
              right: 20,
              child: GradientText("FI",
              style: GoogleFonts.orbitron(
                fontWeight: FontWeight.bold,
                fontSize: 28), colors: [
                  Colors.blueGrey,
                  Colors.white,
                  Colors.blueGrey
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
