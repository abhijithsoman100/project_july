import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project_july/storages/hive%20ex/hive%20using%20type%20adapter/views/reg%20hive.dart';

import '../model/users.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox<Users>('users');
  //await Hive.registerAdapter(adapter);

  runApp(MaterialApp(home: Hive_Login(),));
}

class Hive_Login extends StatelessWidget {
  final email_controller = TextEditingController();
  final pass_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hive Login"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Login  Page"),

              SizedBox(height: 15,),
              TextField(
                controller: email_controller,
                decoration: InputDecoration(border: OutlineInputBorder(),
                    hintText: "E-Mail"
                ),
              ),
              SizedBox(height: 15,),
              TextField(
                controller: pass_controller,
                decoration: InputDecoration(border: OutlineInputBorder(),
                    hintText: "Password"
                ),
              ),
              MaterialButton(onPressed: (){},
                shape: StadiumBorder(),
                color: Colors.pink,
                child: Text("Login"),),
              TextButton(onPressed: (){Get.to(hive_reg());}, child: Text('Not a user? Register here!'))
            ],
          ),
        ),
      ),
    );
  }
}