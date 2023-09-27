import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    home: ListView_seperated(),
  ));
}
class ListView_seperated extends StatelessWidget {
  const ListView_seperated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView_Seperator"),
      ),
      body: ListView.separated(
          itemBuilder: (ctx,i){
            return const Card(
              child: Text("My DATA"),
            );
          },
          separatorBuilder: (context,index){
            if(index % 4 == 0) {
    return const Divider(color: Colors.red,thickness: 3,);
    }else{
              return SizedBox();
            }
          },
          itemCount: 15),
    );
  }
}
