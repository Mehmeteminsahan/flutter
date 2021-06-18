import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/burc_detay.dart';
import 'package:flutter_burc_rehberi/burc_liste.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Burc Rehberi",
      theme: ThemeData(
          primarySwatch: Colors.orange,
          accentColor: Colors.purpleAccent,
          primaryColor: Colors.deepOrange),
      initialRoute: "/burclistesi",
      routes: {
        "/": (context) => BurcListesi(),
        "/burclistesi": (context) => BurcListesi(),
      },
      onGenerateRoute: (settings) {
        List<String> pathElemanlari =
            settings.name.split("/"); //    0/burcDetay/index
        if (pathElemanlari[1] == "burcDetay") {
          return MaterialPageRoute(
              builder: (context) => BurcDetay(int.parse(pathElemanlari[2])));
        }
        return null;
      },
    );
  }
}
