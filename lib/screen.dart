import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;
import 'models/user_model.dart';

class Contacts extends StatefulWidget {
  const Contacts({Key? key}) : super(key: key);

  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  List<User> users = [];
  getResponse() async {
    var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));

    Map<String, dynamic> jsonData = jsonDecode(response.body);


    jsonData["url"].forEach((element) {


      User user;
         });
    setState(() {});
  
  }
    
  @override
  void initState() {
    getResponse();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Icon(Icons.menu, color: Colors.black87),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white70,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black45,
              ))
        ],
        title: Text(
          "Contacts",
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w500, fontSize: 20, color: Colors.black26),
        ),
      ),
      body: ListView.builder(
          itemCount: 4,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Image.network("src"),
              ),
              title: Text("as"),
              subtitle: Text("adsad"),
            );
          }),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {},
          child: const Icon(
            Icons.create_rounded,
            color: Colors.black26,
          )),
    );
  }
}
