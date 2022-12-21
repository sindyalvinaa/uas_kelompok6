import 'package:flutter/material.dart';

class Item{
  String _nama;
  String _nim;
  String _alamat;
  String _jk;

String get nama => this._nama;
set nama(String value) => this._nama = value;

String get nim => this._nim;
set nim(String value) => this._nim = value;

String get alamat => this._alamat;
set alamat(String value) => this._alamat = value;

String get jk => this._jk;
set jk(String value) => this._jk = value;

//Konstruksi versi 1
Item(this._nama, this._nim, this._alamat, this._jk);

//Konstruktor versi 2 : konversi dari map ke item
Item.fromMap (Map<String, dynamic> map){
  this._nama = map['nama'];
  this._nim = map['nim'];
  this._alamat = map['alamat'];
  this._jk = map['jenis kelamin'];
}

//Konversi dari item ke item
Map<String, dynamic> toMap(){
  Map<String, dynamic> map = Map<String, dynamic>();
  map['nama'] = this._nama;
  map['nim'] = this._nim;
  map['alamat'] = this._alamat;
  map['jenis kelamin'] = this._jk;
  return map;

}
}