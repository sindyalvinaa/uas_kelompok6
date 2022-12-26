import 'dart:html';
import 'package:uas_kelompok6/models/item.dart';
import 'package:flutter/cupertino.dart';

class DataPage extends StatefulWidget{
  @override
   _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<DataPage> {
  List<Item> itemList;

  int count = 0;

  // DbHelper dbHelper = DbHelper();
  
  @override
  Widget build(BuildContext context) {
    
    if(itemList == null){
      itemList = List<Item>();
    }
  }
}

