import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_july/home.dart';
import 'package:project_july/registrationPage.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatelessWidget {
  String username = "admin@gmail.com";
  String password = "abc123";

  final uname_controller = TextEditingController();
  final pass_controller = TextEditingController();
  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: [
          Image.network(
            'https://cdn0.iconfinder.com/data/icons/leto-ui-generic-1/64/leto-04-128.png',
            width: 100,
            height: 100,
          ),
          Text(
            'My App',
            style: GoogleFonts.cabinSketch(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Username",
                  labelText: "Username",
                  helperText: "Username must be an eMail",

                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(100.0)))),
              controller: uname_controller,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: TextField(
              decoration: const InputDecoration(
                  hintText: "PassWord",
                    labelText: "PassWord",
                    border: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(100.0)))),
              obscureText: true,
                obscuringCharacter: '*',
                controller: pass_controller),
          ),
          ElevatedButton(
              onPressed: () {
            if(username == uname_controller.text && password == pass_controller.text){
    Navigator.of(context).push(MaterialPageRoute(
    builder: (context)=>Home()));
    }else{
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Invalid Username/ Password or the fields are empty"),
                  backgroundColor: Colors.red,
                ));
            }
          }, child: Text('Login')),
          TextButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context)=>register()));
              }, child: Text('Not a user? Signup here!!!'))
        ]),
      ),
    );
  }
}
