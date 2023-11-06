import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:project_july/registrationPage.dart';
void main() {
  runApp(MaterialApp(home: carosal_slider(),
  ));
}
class carosal_slider  extends StatelessWidget {
  const carosal_slider ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider"),
      ),
      body: CarouselSlider(items: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(
          "https://images.unsplash.com/photo-1695653422967-40348437b8ec?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2071&q=80"))
          ),
        ),
        GestureDetector(onTap: (){
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>register()));
        },
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(
                    "https://plus.unsplash.com/premium_photo-1695635984900-248d6c918ff9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"))
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(
                  "https://images.unsplash.com/photo-1695653421411-4c26bd1d02f7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"))
          ),
        )
      ], options: CarouselOptions(
        autoPlay: true,
        viewportFraction: .5,
        height: 200,
        enlargeCenterPage: true,
        enableInfiniteScroll: true,
        autoPlayCurve: Curves.easeInOutCirc,
        autoPlayAnimationDuration: const Duration(seconds: 2)
      )),
    ) ;
    }
  }

