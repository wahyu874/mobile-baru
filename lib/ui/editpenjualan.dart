import 'package:flutter/material.dart';
import 'package:flutter_application_wahyu/ui/home.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EditPenjualan extends StatelessWidget {
  final Map input;
  EditPenjualan({@required this.input});
  final _formkey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController pembeliController = TextEditingController();
  TextEditingController jumlahController = TextEditingController();
  TextEditingController hargaController = TextEditingController();
  Future updateData() async {
    final response = await http.put(
        Uri.parse(
            "http://192.168.1.10:80/api/inputs/" + input['id'].toString()),
        body: {
          "namaBarang": nameController.text,
          "namaPembeli": pembeliController.text,
          "Jumlah": jumlahController.text,
          "harga": hargaController.text,
        });
    return jsonDecode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.keyboard_arrow_left),
      ),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: nameController..text = input['namaBarang'],
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Nama Barang",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3.0))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Masukin Data";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: pembeliController..text = input['namaPembeli'],
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Keterangan Barang",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3.0))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Masukin Data";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: jumlahController..text = input['Jumlah'],
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Jumlah Barang",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3.0))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Masukin Data";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: TextFormField(
                  controller: hargaController..text = input['harga'],
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Harga Barang",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3.0))),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Masukin Data";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        color: Theme.of(context).primaryColorDark,
                        textColor: Theme.of(context).primaryColorLight,
                        child: Text(
                          "Simpan",
                          textScaleFactor: 1.5,
                        ),
                        onPressed: () {
                          if (_formkey.currentState.validate()) {
                            updateData().then((value) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DataScreen()));
                            });
                          }
                        },
                      ),
                    ),
                    Container(
                      width: 5.0,
                    ),
                    Expanded(
                        child: RaisedButton(
                      color: Theme.of(context).primaryColorDark,
                      textColor: Theme.of(context).primaryColorLight,
                      child: Text(
                        "Batal",
                        textScaleFactor: 1.5,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
