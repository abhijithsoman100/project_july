import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(const MaterialApp(home: Bottom_Sheet_Exmaple(),));
}
class Bottom_Sheet_Exmaple extends StatelessWidget {
  const Bottom_Sheet_Exmaple({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onLongPress: (){
            showSheet(context);
          },
          child: Image.network("https://images.unsplash.com/photo-1695653421411-4c26bd1d02f7?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80"),
        ),
      ),
    );
  }

  void showSheet(BuildContext context) {
    showModalBottomSheet(context: context, builder:(context){
      return const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Share Via"),
          Divider(color: Colors.black26,),
          ListTile(leading: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),title: Text("WhatsApp"),),
          ListTile(leading: FaIcon(FontAwesomeIcons.instagram,color: Colors.pinkAccent,),title: Text("Instagram"),)
        ],
      );
    });
  }
}
