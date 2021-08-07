import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_json/models/araba.dart';

class LocalJsonKullanimi extends StatefulWidget {
  const LocalJsonKullanimi({Key key}) : super(key: key);

  @override
  _LocalJsonKullanimiState createState() => _LocalJsonKullanimiState();
}

class _LocalJsonKullanimiState extends State<LocalJsonKullanimi> {
  List<Araba> tumArabalar;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    /*veriKaynaginiOku().then((value) {
      setState(() {
        tumArabalar = value;
      });
    });*/
  }

  /*
  ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(tumArabalar[index]["araba_adı"].toString()),
              subtitle: Text(tumArabalar[index]["ülke"].toString()),
            );
          },
          itemCount: tumArabalar.length,
        ),
        */
  @override
  Widget build(BuildContext context) {
    veriKaynaginiOku();
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Json Verileri"),
      ),
      body: Container(
        child: FutureBuilder(
          future: veriKaynaginiOku(),
          builder: (context, sonuc) {
            if (sonuc.hasData) {
              tumArabalar = sonuc.data;
              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(tumArabalar[index].araba_Adi.toString()),
                    subtitle: Text(tumArabalar[index].ulke.toString()),
                  );
                },
                itemCount: tumArabalar.length,
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }

/*
  @override
  Widget build(BuildContext context) {
    veriKaynaginiOku();
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Json Verileri"),
      ),
      body: tumArabalar != null
          ? Container(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(tumArabalar[index]["araba_adı"].toString()),
                    subtitle: Text(tumArabalar[index]["ülke"].toString()),
                  );
                },
                itemCount: tumArabalar.length,
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }*/
  Future<List> veriKaynaginiOku() async {
    /*Future<String> jsonOku =
        DefaultAssetBundle.of(context).loadString("assets/data/araba.json");
    jsonOku.then((value) {
      debugPrint("okunan json : " + value);
      return value;
    });*/
    var gelenJson = await DefaultAssetBundle.of(context)
        .loadString("assets/data/araba.json");
    debugPrint(gelenJson);
    List<Araba> arabaListesi = (json.decode(gelenJson) as List)
        .map((mapyapisi) => Araba.fromJsonMap(mapyapisi))
        .toList();
    debugPrint("toplamarba sayısı" + arabaListesi.length.toString());
    for (int i = 0; i < arabaListesi.length; i++) {
      debugPrint("Marka : " + arabaListesi[i].araba_Adi.toString());
      debugPrint("Ulke : " + arabaListesi[i].ulke.toString());
    }
    return arabaListesi;
  }
}
