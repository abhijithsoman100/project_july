import 'package:introduction_screen/introduction_screen.dart';
import 'package:flutter/material.dart';


import 'loginPage.dart';

void main(){
  runApp(MaterialApp(
    home: IntroScreen(),
  ));
}
class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {

    PageDecoration decorationPage = const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black
      ),
      bodyTextStyle: TextStyle(
        fontSize: 20, fontStyle: FontStyle.italic, color: Colors.brown
      )
    );
    return IntroductionScreen(
      pages: [
        PageViewModel(
    decoration: decorationPage,
          title: 'First Page',
          body: 'Introduction Screen allows you to have a screen on an apps first launch to for example explain your app. This widget is very customizable with a great design.',
          image:IntroImage("https://images.unsplash.com/photo-1572274408891-758281498b72?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"),
        ),
        PageViewModel(
    decoration: decorationPage,
          title: 'Second Page',
          body: 'Introduction Screen allows you to have a screen on an apps first launch to for example explain your app. This widget is very customizable with a great design.',
          image:IntroImage("https://images.unsplash.com/photo-1452457750107-cd084dce177d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2001&q=80"),
        ),
        PageViewModel(
    decoration: decorationPage,
          title: 'Third Page',
          body: 'Introduction Screen allows you to have a screen on an apps first launch to for example explain your app. This widget is very customizable with a great design.',
          image:IntroImage("https://images.unsplash.com/photo-1545239351-ef35f43d514b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80"),
        ),
        PageViewModel(
    decoration: decorationPage,
          title: 'Final Page',
          body: 'Introduction Screen allows you to have a screen on an apps first launch to for example explain your app. This widget is very customizable with a great design.',
          image:IntroImage("https://images.unsplash.com/photo-1519720842496-c64a0d0627f9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2018&q=80"),
        )
      ],
    onSkip: ()=> Navigator.of(context).push(MaterialPageRoute(
    builder: (context)=>LoginPage()),),
    onDone: ()=> Navigator.of(context).push(MaterialPageRoute(
    builder: (context)=>LoginPage()),),
      showSkipButton: true,
      skip: Text("Skip"),
      next: Icon(Icons.arrow_forward_sharp),
      done: Text("Done"),
      dotsDecorator: DotsDecorator(
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2))
      ),
        size: Size(12,10),
        activeSize: Size(22, 10),
        activeColor: Colors.lightBlue
    ),
);
  }
  Widget IntroImage(String imgpath){
    return Align(
      alignment: Alignment.topCenter,
      child: Image.network(imgpath,width: double.infinity,)
    );
  }
}
