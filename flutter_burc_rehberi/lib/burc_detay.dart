import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/burc_liste.dart';
import 'package:flutter_burc_rehberi/models/burc.dart';

class BurcDetay extends StatelessWidget {
  int index;
  Burc secilenBurc;

  BurcDetay(this.index);

  @override
  Widget build(BuildContext context) {
    secilenBurc = BurcListesi.tumBurclar[index];
    return Scaffold(
      body: CustomScrollView(
        primary: false,
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "images/" + secilenBurc.burcBuyukResim,
                fit: BoxFit.cover,
              ),
              centerTitle: true,
              title: Text(secilenBurc.burcAdi + "Burcu ve Özellikleri"),
            ),
            pinned: true,
            expandedHeight: 250,
            primary: true,
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Text(
                secilenBurc.burcDetay,
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
            ),
          )
        ],
      ),
    );
  }
}
