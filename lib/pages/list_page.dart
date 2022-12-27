import 'package:flutter/material.dart';
import 'package:uas_kelompok6/models/item.dart';

class ListDataPage extends StatefulWidget {
  @override
  _ListDataPage createState() => _ListDataPage();
}

class _ListDataPage extends State<ListDataPage> {
  List<Item> listItem = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          Item item = listItem[index];
          return Padding(
            padding: EdgeInsets.only(),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          
        },
      )
    );
  }
}