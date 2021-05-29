import 'package:flutter/material.dart';
import 'package:flutter_vucut_kitle_indexi/constants.dart';

import 'widget_container.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

int boy = 178;
int kilo = 90;
double vki = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "VÜCUT KİTLE İNDEKSİ",
          style: kMetinStyle,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              flex: 5,
              child: Column(
                children: [
                  Expanded(
                    flex: 4,
                    child: Row(
                      children: [
                        Expanded(
                          child: MyContainer(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    "BOY",
                                    style: kMetinStyle,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    boy.toString(),
                                    style: kSayiStyle,
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Expanded(
                                        child: MyContainer(
                                          child: Icon(Icons.add),
                                          color: Colors.lightBlueAccent,
                                          onPress: () {
                                            setState(() {
                                              boy++;
                                            });
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        child: MyContainer(
                                          color: Colors.lightBlueAccent,
                                          child: Icon(Icons.remove),
                                          onPress: () {
                                            setState(() {
                                              boy--;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: MyContainer(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: Text(
                                    "KİLO",
                                    style: kMetinStyle,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    kilo.toString(),
                                    style: kSayiStyle,
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Expanded(
                                        child: MyContainer(
                                          child: Icon(Icons.add),
                                          color: Colors.lightBlueAccent,
                                          onPress: () {
                                            setState(() {
                                              kilo++;
                                            });
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        child: MyContainer(
                                          color: Colors.lightBlueAccent,
                                          child: Icon(Icons.remove),
                                          onPress: () {
                                            setState(() {
                                              kilo--;
                                            });
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: MyContainer(
                      onPress: () {
                        setState(() {
                          vki = kilo / ((boy / 100) * (boy / 100));
                          hesapla();
                        });
                      },
                      child: Text(
                        "HESAPLA",
                        style: kMetinStyle,
                      ),
                    ),
                  )
                ],
              )),
          Expanded(
              flex: 4,
              child: MyContainer(
                child: Column(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          "Vücut kitle indexiniz",
                          style: kMetinStyle,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        vki.toStringAsFixed(2).toString(),
                        style: kSayiStyle,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        yaz,
                        style: kMetinStyle,
                      ),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
