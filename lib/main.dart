import 'package:alandia/views/commencnt.dart';
import 'package:alandia/views/home.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Alandia',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: "/",
        routes: {'/': (context) => Acceuil(), '/home': (context) => Home()});
  }
}
