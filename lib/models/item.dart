// ignore_for_file: unnecessary_getters_setters

class Item {
  int? nim;
  String? nama;
  String? alamat;
  String? jenisKelamin;

  // int get nim => _nim;
  // set nim(int value) => _nim = value;

  // String get nama => _nama;
  // set nama(String value) => _nama = value;

  // String get alamat => _alamat;
  // set alamat(String value) => _alamat = value;

  // String get jenisKelamin => _jenisKelamin;
  // set jenisKelamin(String value) => _jenisKelamin = value;

  // konstruktor versi 1
<<<<<<< HEAD
  Item(this._nim,this._nama, this._alamat, this._jenisKelamin);
=======
  Item(this.nim,this.nama, this.alamat, this.jenisKelamin);
>>>>>>> 51a4f2fe3d94ef7841a834e0e6bf3a15bfb3c31f

  // konstruktor versi 2: konversi dari Map ke Item
  Item.fromMap(Map<String, dynamic> map) {
    this.nim = map['nim'];
    this.nama = map['nama'];
    this.alamat = map['alamat'];
    this.jenisKelamin = map['jenisKelamin'];
  }
  // konversi dari Item ke Map
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = <String, dynamic>{};
    map['nim'] = nim;
    map['nama'] = nama;
    map['alamat'] = alamat;
    map['jenisKelamin'] = jenisKelamin;
    return map;
  }
}
