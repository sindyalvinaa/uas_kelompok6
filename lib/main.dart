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
                  child: const Text("Isi Data",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  height: 40.0,
                  width: 250.0,
                ),
                Container(
                  alignment: Alignment.center,
                  child: const Text("List Data",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  height: 40.0,
                  width: 250.0,
                ),
              ],
            ),
            TextFormField(
              decoration: new InputDecoration(
                  hintText: "masukan nama lengkap anda",
                  labelText: "Nama Lengkap",
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0)),
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                  hintText: "masukan NIM anda",
                  labelText: "NIM",
                  icon: Icon(Icons.assignment),
                  border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0)),
                ),
              ),
                TextFormField(
                  decoration: new InputDecoration(
                    hintText: "alamat lengkap anda",
                    labelText: "ALAMAT",
                    icon: Icon(Icons.location_city),
                    border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}


  

 