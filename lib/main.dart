import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("APLIKASI KELOMPOK 6"),
        ),
        body: ListView(
          children: <Widget>[
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: const Text("List Data",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  height: 40.0,
                  width: 250.0,
                ),
                Container(
                  alignment: Alignment.center,
                  child: const Text("Deskripsi Data",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  height: 40.0,
                  width: 250.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


 