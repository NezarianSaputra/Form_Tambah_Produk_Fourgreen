import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:form_tambah_produk_fourgeen/components/list.dart';

Icon iconc = new Icon(Icons.chat_bubble_outline_rounded);
Icon icont = new Icon(Icons.shopping_cart_outlined);

class FormTambahProduk extends StatefulWidget {
  @override
  _FormTambahProdukState createState() => _FormTambahProdukState();
}

class _FormTambahProdukState extends State<FormTambahProduk> {
  File file;
  bool _value = false;

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
                      // controller: _isiberitaTextEditingController,
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
                        // controller: _isiberitaTextEditingController,
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
                    InkWell(
                      onTap: () {},
                      child: ListForm(
                        ilabel: Icons.list,
                        label: "KATEGORI",
                        lbutton: "Atur Kategori",
                        ibutton: Icons.arrow_right,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListForm(
                        ilabel: Icons.label,
                        label: "HARGA",
                        lbutton: "Atur Harga",
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListForm(
                        ilabel: Icons.filter_3,
                        label: "STOK",
                        lbutton: "Atur Stok",
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: ListForm(
                        ilabel: Icons.brush,
                        label: "VARIASI",
                        lbutton: "Atur Tipe, Warna",
                        ibutton: Icons.arrow_right,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      // padding: EdgeInsets.only(left: 5.0),
                      width: size.width - 60.0,
                      color: Colors.white,
                      child: TextField(
                        maxLines: 10,
                        // controller: _isiberitaTextEditingController,
                        decoration: InputDecoration(
                          hintText: 'DESKRIPSI PRODUK',
                          icon: Icon(Icons.description),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      color: Colors.white,
                      child: Text('0/500'),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: InkWell(
                onTap: () {},
                child: ListForm(
                  ilabel: Icons.high_quality,
                  label: "KUALITAS",
                  lbutton: "Atur Kualitas",
                  ibutton: Icons.arrow_right,
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: InkWell(
                onTap: () {},
                child: ListForm(
                  ilabel: Icons.cases,
                  label: "BERAT",
                  lbutton: "Atur Berat",
                  ibutton: Icons.arrow_right,
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: InkWell(
                onTap: () {},
                child: ListForm(
                  ilabel: Icons.airplanemode_active,
                  label: "Pengiriman",
                  lbutton: "Atur Jasa Pengiriman",
                  ibutton: Icons.arrow_right,
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
