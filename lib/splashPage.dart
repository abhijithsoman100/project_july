import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatelessWidget {
  @override
  //to create our widget tree we use build function
  Widget build(BuildContext context) {
    //BuildContext - used to locate widgets on the widget tree and monitor their actions
    return Scaffold(
      //  backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  Colors.black12,
                  Colors.white70,
                  Colors.black12
                ])
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///adding built in icons
              // Icon(
              //   Icons.favorite,
              //   size: 80,
              //   color: Colors.red,
              // ),
              /// adding external icons (flutter accessed it as image)
              /// Asset image as image provider
              // Image(
              //   image: AssetImage("assets/icons/tree.png"),
              //   width: 100,
              //   height: 100,
              // ),
              /// network image as image provider
              const Image(
                image: NetworkImage("https://icons.iconarchive.com/icons/aniket-suvarna/box-logo/256/bxl-angular-icon.png"),
                width: 100, height: 100,
              ),
              Text(
                "MY ApplicAtion",
                style: GoogleFonts.dancingScript(
                    fontSize: 30,
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold
                ),
                // style: TextStyle(
                //     fontSize: 20,
                //     color: Colors.blue,
                //     fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
