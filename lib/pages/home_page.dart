import 'package:uas_kelompok6/database/dbhelper.dart';
import 'package:uas_kelompok6/pages/biodata_page.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
// import 'package:sqlite/DbHelper.dart';
// import 'package:sqlite/entryform.dart';

import 'package:uas_kelompok6/models/item.dart';
//pendukung program asinkron

class HomePage extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomePage> {
  //DbHelper dbHelper = DbHelper();
  int count = 0;
  List<Item> itemList;

  @override
  Widget build(BuildContext context) {
    if (itemList == null) {
      itemList = <Item>[];
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Data'),
      ),
      body: Column(children: [
        Expanded(
          child: createListView(),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: double.infinity,
            child: MaterialButton(
              child: Text("Tambah Data"),
              onPressed: () async {
                var item = await navigateToEntryForm(context, null);
                if (item != null) {
                  //TODO 2 Panggil Fungsi untuk Insert ke DB
                  int result = await DbHelper.insert(item);
                  if (result > 0) {
                    updateListView();
                  }
                }
              },
            ),
          ),
        ),
      ]),
    );
  }

  Future<Item> navigateToEntryForm(BuildContext context, Item item) async {
    var result = await Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) {
      return BiodataPage();
    }));
    return result;
  }

  ListView createListView() {
    TextStyle textStyle = Theme.of(context).textTheme.headline5;
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.ad_units),
            ),
            title: Text(
              this.itemList[index].nama,
              style: textStyle,
            ),
            subtitle: Text(this.itemList[index].nim.toString()),
            trailing: GestureDetector(
              child: Icon(Icons.delete),
              onTap: () async {
                //todo
                deleteItem(itemList[index]);
              },
            ),
            onTap: () async {
              var item =
                  await navigateToEntryForm(context, this.itemList[index]);
              //todo
              editItem(itemList[index]);
            },
          ),
        );
      },
    );
  }

  //update List item
  void updateListView() {
    final Future<Database> dbFuture = DbHelper.initDb();
    dbFuture.then((database) {
      //todo
      Future<List<Item>> itemListFuture = DbHelper.getItemList();
      itemListFuture.then((itemList) {
        setState(() {
          this.itemList = itemList;
          this.count = itemList.length;
        });
      });
    });
  }

  void deleteItem(Item object) async {
    int result = await DbHelper.delete(object.nim);
    if (result > 0) {
      updateListView();
    }
  }

  void editItem(Item object) async {
    int result = await DbHelper.update(object);
    if (result > 0) {
      updateListView();
    }
  }
}
