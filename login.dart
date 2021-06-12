// import 'package:demopart9/pages/itemaddnotifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:sampleproject/pages/dashboard.dart';
import 'package:sampleproject/pages/welcome_page.dart';

class LogInPage extends StatefulWidget {
  final String? nametexting;

  const LogInPage({Key? key, required this.nametexting}) : super(key: key);
  @override
  _LogInPageState createState() => _LogInPageState(nametexting: nametexting);
}

class _LogInPageState extends State<LogInPage> {
  String? nametexting;
  final TextEditingController nametext = TextEditingController();

  _LogInPageState({required this.nametexting});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 60,
        title:
            Text("Login", style: TextStyle(color: Colors.black, fontSize: 40)),
        automaticallyImplyLeading: false,
      ),
      body: Material(
        child: Center(
            child: Container(
          width: 450,
          height: 600,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xff000fff),
            Colors.red,
            Colors.yellow,
            Colors.pink,
            Colors.green,
            Color(0xff000fff),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Card(
            elevation: 30,
            shadowColor: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
                SizedBox(
                  height: 20,
                ),
                Form(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          onChanged: (value) {
                            nametexting = value.replaceAll("@gmail.com", "");
                          },
                          controller: nametext,
                          decoration: InputDecoration(
                              labelText: "Email id",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              focusColor: Colors.black,
                              labelText: "Password",
                              border: OutlineInputBorder()),
                        ),
                      )
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (nametexting.toString().isEmpty) {
                      return;
                    }
                    print("pressed");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) =>
                                WelcomePage(nametexting: nametexting)));
                  },
                  child: Container(
                    width: 100,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(2, 2),
                            color: Colors.blue,
                            spreadRadius: 1,
                            blurRadius: 20),
                      ],
                    ),
                    child: Center(
                        child: Text(
                      "Login",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                    )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
