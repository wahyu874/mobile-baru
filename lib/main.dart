import 'package:flutter/material.dart';
import 'package:flutter_application_wahyu/Auth/auth_page.dart';
import "./beranda.dart" as beranda;
import './Auth/auth1.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(new MaterialApp(
    title: "Penjualan Laptop & PC",
    home: new MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Auth(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Wahyu Computer",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginPage(),
      ),
    );
  }
}
