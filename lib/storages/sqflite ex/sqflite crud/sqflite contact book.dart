import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_july/storages/sqflite%20ex/sqflite%20crud/sqf%20functions.dart';

void main(){
  runApp(MaterialApp(home: Contact_Book(),));
}
class Contact_Book extends StatefulWidget {
  const Contact_Book({super.key});

  @override
  State<Contact_Book> createState() => _Contact_BookState();
}

class _Contact_BookState extends State<Contact_Book> {
  List<Map<String,dynamic>> contacts = [];
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Contacts"),
      ),
      body: isLoading ? Text("Create New Contact",style: GoogleFonts.caesarDressing(fontSize: 25),)
      :ListView.builder(
        itemCount: contacts.length,
          itemBuilder: (context, index){
            return Card(
              child: ListTile(
                leading: CircleAvatar(child: Icon(Icons.person),
                  backgroundColor: Colors.primaries[index % Colors.primaries.length],
                ),
                title: Text(contacts[index]['cname']),
                subtitle: Text(contacts[index]['cnumber']),
                trailing: Wrap(
                  children: [
                  IconButton(onPressed: (){}, icon: const Icon(Icons.edit)),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.delete))
                ],
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>showSheet(null),
        child: const Icon(Icons.person_add_alt_1_outlined),
      ),
    );
  }
final name_controller = TextEditingController();
  final num_controller = TextEditingController();
  void showSheet(int? id) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context, builder: (context){
        return Container(
          padding: EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
            bottom: MediaQuery.of(context).viewInsets.bottom + 120
          ),
          child: Column(
            children: [
              TextField(
                controller: name_controller,
                decoration: const InputDecoration(border: OutlineInputBorder(),hintText: "Name"),
              ),
              TextField(
                controller: num_controller,
                decoration: const InputDecoration(border: OutlineInputBorder(),hintText: "Number"),
              ),
              ElevatedButton(
                  onPressed: (){
                    if(id == null){
                      createContact(
                      name_controller.text,num_controller.text);
                  }
                    if(id != null){//update contact
                       }
                      name_controller.text ="";
                      num_controller.text ="";
                  }
            , child: Text(id == null? "Create Contact": "Update Contact")),],
          ),
        );
    }
    );
  }

  Future<void> createContact(String name, String number) async {
        await SQL_Functions.addnewContact(name,number);
    }
    @override
    void initState(){
        readContact_and_refresh_Ui();
        super.initState();
    }

 Future <void> readContact_and_refresh_Ui() async {
        final mycontacts = await SQL_Functions.readContact();
        setState(() {
          contacts = mycontacts;
          isLoading = false;
        });
 }
    }


