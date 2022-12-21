import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uas_kelompok6/model/item.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("APLIKASI KELOMPOK 6"),
            bottom: const TabBar(
              tabs: [
                Tab(text: "LIST DATA"),
                Tab(text: "DETAIL DATA"),
              ],
            ),
          ),
          body: myBody(),
        ),
      ),
    );
  }
}

class myBody extends StatefulWidget{
  @override
  State<myBody> createState() => _myBody();
}

enum Gender {male, female}

class _myBody extends State<myBody>{
  Gender _gender = Gender.male;
  
  Item item ;

  TextEditingController namaController = TextEditingController();
  TextEditingController nimController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController jkController = TextEditingController();

  @override
  Widget build(BuildContext context){
    if(item !=null){
      namaController.text = item.nama;
      nimController.text = item.nim.toString();
      alamatController.text = item.alamat;
      jkController.text = item.jk;
    }

    return MaterialApp(
      home: Column(
        children: [
          Container(
            child: Text(
              "Tambah Data",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 21),
          ),
          Container(
            child: TextFormField(
              decoration: new InputDecoration(
                  hintText: "masukan nama lengkap anda",
                  labelText: "Nama Lengkap",
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0)),
                ),
              ),
            ),
            Container(
              child: TextFormField(
                keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                  hintText: "masukan NIM anda",
                  labelText: "NIM",
                  icon: Icon(Icons.assignment),
                  border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0)),
                ),
              ),
              ),
              Container(
                child: TextFormField(
                  decoration: new InputDecoration(
                    hintText: "alamat lengkap anda",
                    labelText: "ALAMAT",
                    hintMaxLines: 3,
                    icon: Icon(Icons.location_city),
                    border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(5.0)),
                  ),
                ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: ListTile(
                        title: const Text("PRIA"),
                        leading: Radio<Gender>(
                          value: Gender.male,
                          groupValue: _gender,
                          onChanged: (Gender (value) {
                            setState(() {
                              _gender = jkController.text as Gender;
                              _gender = value;
                            });
                          }
                        ),
                      ),
                      contentPadding: EdgeInsets.only(left: 150, top: 22, bottom: 22),
                      ),
                    ),
                   Expanded(
                      child: ListTile(
                        title: const Text("WANITA"),
                        leading: Radio<Gender>(
                          value: Gender.female,
                          groupValue: _gender,
                          onChanged: (Gender (value) {
                            setState(() {
                              _gender = jkController.text as Gender;
                              _gender = value;
                            });
                          }
                        ),
                      ),
                      contentPadding: EdgeInsets.only(left: 150, top: 22, bottom: 22),
                      ),
                   ),

                  ],
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: ((){
                        item = item(
                          namaController.text,
                          nimController.toString(),
                          alamatController.text,
                          jkController.text);

                        }),
                        child: Text("SAVE DATA"),
                        style: ButtonStyle(
                          alignment: Alignment.center,
                        ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
     