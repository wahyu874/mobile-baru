import 'package:flutter/material.dart';

class DetailMenu extends StatefulWidget {
  DetailMenu({Key key, this.nama, this.deskripsi, this.gambar})
      : super(key: key);
  final String nama;
  final String deskripsi;
  final String gambar;
  @override
  _DetailMenuState createState() => _DetailMenuState();
}

class _DetailMenuState extends State<DetailMenu> {
  final childrenstar = <Widget>[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("${widget.nama}"),
        backgroundColor: Colors.lightBlueAccent[900],
      ),
      backgroundColor: Colors.lightBlueAccent[200],
      body: new Container(
        width: double.infinity,
        child: new ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                new Image.asset("assets/appimage/" + widget.gambar)
              ],
            ),
            Container(
              decoration: new BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [const Color(0xff03a9f4), const Color(0xff01579b)],
                ),
              ),
              padding: EdgeInsets.all(10.0),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.lightBlue[900],
              width: double.infinity,
              height: double.maxFinite,
              child: new Text(widget.deskripsi,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
