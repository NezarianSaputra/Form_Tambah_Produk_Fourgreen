import 'package:flutter/material.dart';
import 'package:form_tambah_produk_fourgeen/form_tambah_produk.dart';

void main() {
  runApp(TambahProduk());
}

class TambahProduk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FormTambahProduk(),
    );
  }
}
