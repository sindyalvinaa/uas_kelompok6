import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:uas_kelompok6/database/dbhelper.dart';
import 'package:uas_kelompok6/models/item.dart';
import 'package:uas_kelompok6/pages/data_page.dart';


class BiodataPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Biodata Mahasiswa"),
          ),
          body: myBody(),
        ),
      ),
    );
  }
}

class myBody extends StatefulWidget {
  @override
  State<myBody> createState() => _mybody();
}

enum Gender { male, female }

class _mybody extends State<myBody> {
  Gender _gender = Gender.male;

  Item item;


  TextEditingController nimController = TextEditingController();
  TextEditingController namaController = TextEditingController();
  TextEditingController alamatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Text(
              "Tambah Biodata",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 20),
          ),
          Container(
            child: TextField(
                controller: nimController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "masukan NIM anda",
                  labelText: 'NIM',
                  icon: Icon(Icons.assignment),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
              ),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            margin: EdgeInsets.only(
              left: 102,
              right: 102,
            ),
          ),
          Container(
            child: TextField(
                controller: namaController,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  hintText: "masukan nama lengkap anda",
                  labelText: 'NAMA',
                  icon: Icon(Icons.people),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
              ),
            ),
            margin: EdgeInsets.only(
              left: 102,
              right: 102,
            ),
          ),
          Container(
            child: TextField(
                controller: alamatController,
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                  hintText: "alamat lengkap anda",
                  labelText: 'ALAMAT',
                  icon: Icon(Icons.location_city),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
            ),
            margin: EdgeInsets.only(
              left: 102,
              right: 102,
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: RadioListTile(
                  title: const Text("PRIA"),
                  value: Gender.male,
                  groupValue: _gender,
                  onChanged: (Gender value) {
                    setState(() {
                      _gender = value;
                    });
                  },
                  contentPadding:
                      EdgeInsets.only(left: 10, top: 20, bottom: 20),
                ),
              ),
              Expanded(
                child: RadioListTile(
                  title: const Text("WANITA"),
                  value: Gender.female,
                  groupValue: _gender,
                  onChanged: (Gender value) {
                    setState(() {
                      _gender = value;
                    });
                  },
                  contentPadding:
                      EdgeInsets.only(top: 20, bottom: 20),
                ),
              ),
            ],
          ),
          Column(
            children: [
              ElevatedButton(
                onPressed: () async {
                  var gender = _gender.toString();

                  if (gender == "Gender.male") {
                    gender = "PRIA";
                  } else {
                    gender = "WANITA";
                  }

                  // item = Item(int.parse(nimController.text),
                  //     namaController.text, alamatController.text, gender);
                  if (item != null) {
                    print('goto here');
                    await addItem(item);
                    if (!mounted) return;
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DataPage(),
                      ),
                    );
                  }
                },
                child: Text("Tambah Data"),
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

  Future<void> addItem(Item item) async {
    print('goto here2');
    int result = await DbHelper.insert(item);
    if (!mounted) return;
    if (result > 0){
      showAlertDialog(context);
    }
  }
}

showAlertDialog(BuildContext context) {
  Item item;
  Widget okButton = MaterialButton(
    child: Text("OK"),
    onPressed: () {},
  );

  AlertDialog alert = AlertDialog(
    title: Text("BERHASIL"),
    content: Text("Data Anda Berhasil Ditambahkan"),
    actions: [
      okButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}