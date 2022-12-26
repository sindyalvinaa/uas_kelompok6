import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uas_kelompok6/models/item.dart';

class BiodataPage extends StatefulWidget{
  @override
  State<BiodataPage> createState() => _BiodataPage();
}

enum Gender {male, female}

class _BiodataPage extends State<BiodataPage>{
  Gender _gender = Gender.male;
  
  // Item item ;
  
  TextEditingController nimController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController jenisKelaminController = TextEditingController();

  @override
  Widget build(BuildContext context){
    // if(item != null){
    //   nimController.text = item.nim.toString();
    //   namaController.text = item.nama;
    //   alamatController.text = item.alamat;
    //   jenisKelaminController.text = item.jenisKelamin;
    // }

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
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Masukan NIM anda",
                labelText: "NIM",
                icon: Icon(Icons.assignment),
                border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0)
                ),
              ),
            ),
          ),

          Container(
            child: TextFormField(
              decoration: new InputDecoration(
                hintText: "Masukan nama lengkap anda",
                labelText: "Nama Lengkap",
                icon: Icon(Icons.people),
                border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0)
                ),
              ),
            ),
          ),

          Container(
            child: TextFormField(
              decoration: new InputDecoration(
                hintText: "Alamat lengkap anda",
                labelText: "ALAMAT",
                hintMaxLines: 3,
                icon: Icon(Icons.location_city),
                border: OutlineInputBorder(
                  borderRadius: new BorderRadius.circular(5.0)
                ),
              ),
            ),
          ),
            
          // Row(
          //   children: <Widget>[
          //     Expanded(
          //       child: ListTile(
          //         title: const Text("PRIA"),
          //         leading: Radio<Gender>(
          //           value: Gender.male,
          //           groupValue: _gender,
          //           onChanged: (
          //             Gender (value) {
          //               setState(
          //                 () {
          //                   _gender = jenisKelaminController.text as Gender;
          //                   _gender = value;
          //                 }
          //               );
          //             }
          //           ),
          //         ),
          //         contentPadding: EdgeInsets.only(left: 150, top: 22, bottom: 22),
          //       ),
          //     ),
                
          //     Expanded(
          //       child: ListTile(
          //         title: const Text("WANITA"),
          //         leading: Radio<Gender>(
          //           value: Gender.female,
          //           groupValue: _gender,
          //           onChanged: (
          //             Gender (value) {
          //               setState(
          //                 () {
          //                   _gender = jenisKelaminController.text as Gender;
          //                   _gender = value;
          //                 }
          //               );
          //             }
          //           ),
          //         ),
          //         contentPadding: EdgeInsets.only(left: 150, top: 22, bottom: 22),
          //       ),
          //     ),
          //   ],
          // ),
            
          // Column(
          //   children: [
          //     ElevatedButton(
          //       onPressed: (
          //         () {
          //           items = items(
          //             nimController.toString(),
          //             namaController.text,
          //             alamatController.text,
          //             jenisKelaminController.text
          //           );
          //         }
          //       ),
          //       child: Text("SAVE DATA"),
          //       style: ButtonStyle(
          //         alignment: Alignment.center,
          //       ),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
  // @override
  // void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  //   super.debugFillProperties(properties);
  //   properties.add(DiagnosticsProperty<Item>('item', item));
  // }
}
     