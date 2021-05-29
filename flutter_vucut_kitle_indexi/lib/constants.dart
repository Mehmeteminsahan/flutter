import 'package:flutter/material.dart';
import 'package:flutter_vucut_kitle_indexi/home_page.dart';

TextStyle kMetinStyle = TextStyle(fontWeight: FontWeight.bold, fontSize: 23);
TextStyle kSayiStyle = TextStyle(
    fontWeight: FontWeight.bold, fontSize: 40, color: Colors.deepPurple[900]);

hesapla() {
  if (vki < 18.5)
    yaz = vkizayif;
  else if (vki < 25)
    yaz = vkinormal;
  else if (vki < 30)
    yaz = vikfazla;
  else if (vki < 35)
    yaz = vkitip1;
  else if (vki < 40)
    yaz = vkitip2;
  else
    yaz = vkiobez;
}

String yaz = "";
String vkizayif = "Normalden zayıfsınız";
String vkinormal = "Normal kilodasınız";
String vikfazla = "Fazla kilolarınız var";
String vkitip1 = "Tip 1 obez oranı";
String vkitip2 = "Tip 2 obez oranı";
String vkiobez = "Morbit Obez İleri derece Obez";
