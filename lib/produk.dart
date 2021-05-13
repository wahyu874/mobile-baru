import 'package:flutter/material.dart';
import 'detail_produk.dart';

class produk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("List PC dan Laptop")),
      backgroundColor: Colors.lightBlue[200],
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "Laptop Lenovo new",
                  deskripsi:
                      "Laptop ini di support dengan I5 dan ram 4GB yang sangat kencang di kelas nya.",
                  harga: 5000000,
                  gambar: "lenovo.jpg",
                  star: 5,
                ),
              ));
            },
            child: ProductBox(
                nama: "Laptop HP ahoy",
                deskripsi: "Laptop untuk kerja dan cocok untuk para wanita",
                harga: 4000000,
                gambar: "HP.jpg",
                star: 5),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "Macbook air cuy",
                  deskripsi:
                      "terbaik di kelas pencita brand macbook di jamin OP sekali.",
                  harga: 9000000,
                  gambar: "macbook air.jpg",
                  star: 4,
                ),
              ));
            },
            child: ProductBox(
                nama: "Pc pro nih bos",
                deskripsi:
                    "pc dengan kekuatan software dan hardware yang di jamin bikin kalian klepek klepek dengan performa nya.",
                harga: 19000000,
                gambar: "pc pro.jpeg",
                star: 5),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DetailProduk(
                  nama: "pc intel",
                  deskripsi:
                      "karyawan sangat membutuhkan pc ini karena sangat tetap digunakan oleh kalangan pegawai kantoran.",
                  harga: 7000000,
                  gambar: "pc intel.jpeg",
                  star: 4,
                ),
              ));
            },
            child: ProductBox(
                nama: "Pc Robot",
                deskripsi:
                    "Desain sangat maskulin dan di dukung procesor ROG dan banyak lagi spare part yang luar biasa",
                harga: 18000000,
                gambar: "pc robot.jpeg",
                star: 5),
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key key, this.nama, this.deskripsi, this.harga, this.gambar, this.star})
      : super(key: key);
  final String nama;
  final String deskripsi;
  final int harga;
  final String gambar;
  final int star;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue[700],
      padding: EdgeInsets.all(2),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              "assets/appimage/" + gambar,
              width: 150,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(this.nama,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                    Text(this.deskripsi),
                    Text(
                      "Harga: " + this.harga.toString(),
                      style: TextStyle(color: Colors.lightBlue.shade900),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
