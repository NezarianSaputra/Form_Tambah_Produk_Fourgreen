import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';

Icon iconc = new Icon(Icons.chat_bubble_outline_rounded);
Icon icont = new Icon(Icons.shopping_cart_outlined);

class FormTambahProduk extends StatefulWidget {
  @override
  _FormTambahProdukState createState() => _FormTambahProdukState();
}

class _FormTambahProdukState extends State<FormTambahProduk> {
  File file;
  bool _value = false;

  final TextEditingController _txtNamaPController = TextEditingController();
  final TextEditingController _txtDeskripsiController = TextEditingController();
  final TextEditingController _txtKategoriController = TextEditingController();
  final TextEditingController _txtHargaController = TextEditingController();
  final TextEditingController _txtStokController = TextEditingController();
  final TextEditingController _txtVariasiController = TextEditingController();
  final TextEditingController _txtDeskripsi2Controller =
      TextEditingController();
  final TextEditingController _txtKualitasController = TextEditingController();
  final TextEditingController _txtBeratController = TextEditingController();
  final TextEditingController _txtPengirimanController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xFF04855e),
        title: Text('TAMBAH PRODUK'),
        actions: [
          IconButton(
            icon: iconc,
            onPressed: () {},
          ),
          IconButton(
            icon: icont,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: size.height * 0.15,
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                            image: file == null
                                ? NetworkImage(
                                    "https://sumeks.co/assets/foto/2019/10/1-hidroponik-57.01-PM.jpg")
                                : FileImage(file),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                            image: file == null
                                ? NetworkImage(
                                    "https://sumeks.co/assets/foto/2019/10/1-hidroponik-57.01-PM.jpg")
                                : FileImage(file),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          image: DecorationImage(
                            image: file == null
                                ? NetworkImage(
                                    "https://sumeks.co/assets/foto/2019/10/1-hidroponik-57.01-PM.jpg")
                                : FileImage(file),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 5.0),
                    alignment: Alignment.center,
                    width: size.width - 60.0,
                    height: size.height * 0.06,
                    color: Colors.white,
                    child: TextField(
                      controller: _txtNamaPController,
                      decoration: InputDecoration(
                        hintText: 'NAMA PRODUK',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 5),
                    height: size.height * 0.06,
                    color: Colors.white,
                    child: Text('0/200'),
                  ),
                ],
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                height: size.height * 0.06,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 5.0),
                      alignment: Alignment.center,
                      width: size.width - 60.0,
                      color: Colors.white,
                      child: TextField(
                        controller: _txtDeskripsiController,
                        decoration: InputDecoration(
                          hintText: 'DESKRIPSI PRODUK',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 5),
                      color: Colors.white,
                      child: Text('0/500'),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              child: Card(
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      height: size.height * 0.06,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            color: Colors.white,
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.list),
                                Container(
                                  padding: EdgeInsets.only(left: 5.0),
                                  width: size.width * 0.4,
                                  child: TextField(
                                    controller: _txtKategoriController,
                                    decoration: InputDecoration(
                                      hintText: "KATEGORI",
                                      border: InputBorder.none,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 5),
                            color: Colors.white,
                            child: Row(
                              children: [
                                Text("Atur Kategori"),
                                Icon(
                                  Icons.arrow_right,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: size.height * 0.06,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            color: Colors.white,
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.label),
                                Container(
                                  padding: EdgeInsets.only(left: 5.0),
                                  width: size.width * 0.4,
                                  child: TextField(
                                    controller: _txtHargaController,
                                    decoration: InputDecoration(
                                      hintText: "HARGA",
                                      border: InputBorder.none,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 5),
                            color: Colors.white,
                            child: Row(
                              children: [
                                Text("Atur Harga"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: size.height * 0.06,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            color: Colors.white,
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.filter_3),
                                Container(
                                  padding: EdgeInsets.only(left: 5.0),
                                  width: size.width * 0.4,
                                  child: TextField(
                                    controller: _txtStokController,
                                    decoration: InputDecoration(
                                      hintText: "STOK",
                                      border: InputBorder.none,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 5),
                            color: Colors.white,
                            child: Row(
                              children: [
                                Text("Atur Stok"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: size.height * 0.06,
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            color: Colors.white,
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.brush),
                                Container(
                                  padding: EdgeInsets.only(left: 5.0),
                                  width: size.width * 0.4,
                                  child: TextField(
                                    controller: _txtVariasiController,
                                    decoration: InputDecoration(
                                      hintText: "VARIASI",
                                      border: InputBorder.none,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(left: 5),
                            color: Colors.white,
                            child: Row(
                              children: [
                                Text("Atur Tipe, Warna"),
                                Icon(
                                  Icons.arrow_right,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                height: size.height * 0.16,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Icon(Icons.description),
                    ),
                    Container(
                      width: size.width - 120.0,
                      color: Colors.white,
                      child: TextField(
                        maxLines: 10,
                        controller: _txtDeskripsi2Controller,
                        decoration: InputDecoration(
                          hintText: 'DESKRIPSI PRODUK',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15),
                      color: Colors.white,
                      child: Text('0/500'),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5),
                height: size.height * 0.06,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.high_quality),
                          Container(
                            padding: EdgeInsets.only(left: 5.0),
                            width: size.width * 0.4,
                            child: TextField(
                              controller: _txtKualitasController,
                              decoration: InputDecoration(
                                hintText: "KUALITAS",
                                border: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 5),
                      color: Colors.white,
                      child: Row(
                        children: [
                          Text("Atur Kualitas"),
                          Icon(
                            Icons.arrow_right,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                height: size.height * 0.06,
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.work),
                          Container(
                            padding: EdgeInsets.only(left: 5.0),
                            width: size.width * 0.4,
                            child: TextField(
                              controller: _txtBeratController,
                              decoration: InputDecoration(
                                hintText: "BERAT",
                                border: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 5),
                      color: Colors.white,
                      child: Row(
                        children: [
                          Text("Atur Berat"),
                          Icon(
                            Icons.arrow_right,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                height: size.height * 0.06,
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.airplanemode_active),
                          Container(
                            padding: EdgeInsets.only(left: 5.0),
                            width: size.width * 0.4,
                            child: TextField(
                              controller: _txtPengirimanController,
                              decoration: InputDecoration(
                                hintText: "PENGIRIMAN",
                                border: InputBorder.none,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 5),
                      color: Colors.white,
                      child: Row(
                        children: [
                          Text("Atur Jasa Pengiriman"),
                          Icon(
                            Icons.arrow_right,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: SwitchListTile(
                value: _value,
                onChanged: (bool value) {
                  setState(() {
                    _value = value;
                  });
                },
                activeColor: Colors.white,
                activeTrackColor: Color(0xff129789),
                inactiveTrackColor: Colors.grey,
                title: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      child: Icon(
                        Icons.check_circle_outline,
                        color: Colors.grey[400],
                      ),
                    ),
                    Text(
                      'Tampilkan Produk',
                      style: TextStyle(
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    height: size.height * 0.05,
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color(0xFF04855e),
                    ),
                    child: OutlineButton(
                      onPressed: () {},
                      child: Text(
                        'HOME',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: size.height * 0.05,
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color(0xFF04855e),
                    ),
                    child: OutlineButton(
                      onPressed: () {},
                      child: Text(
                        'SUBMIT',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: size.height * 0.05,
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: Color(0xFF04855e),
                    ),
                    child: OutlineButton(
                      onPressed: () {},
                      child: Text(
                        'TOKO',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
