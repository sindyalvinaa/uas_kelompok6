import 'package:flutter/material.dart';
import 'package:uas_kelompok6/pages/home_page.dart';
import 'package:uas_kelompok6/pages/detail_data_page.dart';
import 'package:uas_kelompok6/pages/list_data_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' :(context) => HomePage(),
      '/list_data' :(context) => ListDataPage(),
      '/detail_data':(context) => DetailDataPage(),
    },
  ));
}




  

 