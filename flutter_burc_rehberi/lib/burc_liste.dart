import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/utils/string.dart';

import 'models/burc.dart';

class BurcListesi extends StatelessWidget {
  static List<Burc> tumBurclar;
  @override
  Widget build(BuildContext context) {
    tumBurclar = veriKaynaginiHazirla();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("BURÇ REHBERİ"),
      ),
      body: listeyiHazirla(),
    );
  }

  List<Burc> veriKaynaginiHazirla() {
    List<Burc> burclar = [];
    for (int i = 0; i < 12; i++) {
      String buyukResim =
          Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk${i + 1}.png";
      String kucukResim = Strings.BURC_ADLARI[i].toLowerCase() + "${i + 1}.png";
      Burc burcEkle = Burc(Strings.BURC_ADLARI[i], Strings.BURC_TARIHLERI[i],
          Strings.BURC_GENEL_OZELLIKLERI[i], kucukResim, buyukResim);
      burclar.add(burcEkle);
    }
    return burclar;
  }

  Widget listeyiHazirla() {
    return ListView.builder(
      itemBuilder: (context, index) {
        return burcListeSatirlari(context, index);
      },
      itemCount: tumBurclar.length,
    );
  }

  Widget burcListeSatirlari(BuildContext context, int index) {
    Burc anlikEklenenBurc = tumBurclar[index];

    return Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          onTap: () => Navigator.pushNamed(context, "/burcDetay/$index"),
          leading: Image.asset(
            "images/" + anlikEklenenBurc.burcKucukResim,
            width: 64,
            height: 64,
          ),
          title: Text(
            anlikEklenenBurc.burcAdi,
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.purple),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(vertical: 9),
            child: Text(
              anlikEklenenBurc.burcTarih,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.black),
            ),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Colors.deepOrange,
          ),
        ),
      ),
    );
  }
}
