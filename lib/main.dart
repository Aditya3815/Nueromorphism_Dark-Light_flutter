import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool darkmode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkmode ? Colors.grey[850] : Colors.grey.shade200,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: Icon(Icons.android,
                      size: 80, color: darkmode ? Colors.white : Colors.black),
                  decoration: BoxDecoration(
                      color: darkmode ? Colors.grey[850] : Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      boxShadow: [
                        BoxShadow(
                            color: darkmode
                                ? Colors.grey.shade900
                                : Colors.grey.shade300,
                            offset: Offset(4.0, 4.0),
                            blurRadius: 29.0,
                            spreadRadius: 9.0),
                        BoxShadow(
                            color:
                                darkmode ? Colors.grey.shade800 : Colors.white,
                            offset: Offset(-4.0, -4.0),
                            blurRadius: 15.0,
                            spreadRadius: 1.0),
                      ]),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            darkmode = true;
                          });
                        },
                        child: Text(
                          "Dark",
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.black,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              darkmode = false;
                            });
                          },
                          child: Text(
                            "Light",
                            style: TextStyle(color: Colors.black),
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
