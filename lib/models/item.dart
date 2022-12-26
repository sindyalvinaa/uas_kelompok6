// ignore_for_file: unnecessary_getters_setters

class Item {
  int _nim;
  String _nama;
  String _alamat;
  String _jenisKelamin;

  int get nim => _nim;
  set nim(int value) => _nim = value;

  String get nama => _nama;
  set nama(String value) => _nama = value;

  String get alamat => _alamat;
  set alamat(String value) => _alamat = value;

  String get jenisKelamin => _jenisKelamin;
  set jenisKelamin(String value) => _jenisKelamin = value;

  // konstruktor versi 1
  Item(this._nim,this._nama, this._alamat, this._jenisKelamin);

  // konstruktor versi 2: konversi dari Map ke Item
  Item.fromMap(Map<String, dynamic> map) {
    this._nim = map['nim'];
    this._nama = map['nama'];
    this._alamat = map['alamat'];
    this._jenisKelamin = map['jenisKelamin'];
  }
  // konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};
    map['nim'] = _nim;
    map['nama'] = nama;
    map['alamat'] = alamat;
    map['jenisKelamin'] = jenisKelamin;
    return map;
  }
}
