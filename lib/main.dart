//kode utama Aplikasi tampilan awal
import 'package:flutter/material.dart';
import 'package:uas_kelompok6/models/item.dart';
import 'package:uas_kelompok6/pages/biodata_page.dart';
import 'package:uas_kelompok6/pages/data_page.dart';
import 'package:uas_kelompok6/pages/detail_page.dart';
import 'package:uas_kelompok6/pages/home_page.dart';
// import 'package:sqlite/home.dart';

//package letak folder Anda
void main(){
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' :(context) => HomePage(),
      '/home' :(context) => MyApp(),
      '/data' :(context) => DataPage(),
      '/detail' :(context) => DetailPage(),
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Demo Kelompok 6'),
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: "Tambah Data"),
                Tab(icon: Icon(Icons.assignment_ind), text: "Data List"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              BiodataPage(),
              DataPage(),
            ],
          ),
        ),
      ),
    );
  }
}
