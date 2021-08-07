import 'model.dart';

class Araba {
  String araba_Adi, ulke;
  int kurulusTarihi;
  List<Model> model;

  Araba.fromJsonMap(Map<String, dynamic> map)
      : araba_Adi = map["araba_adi"],
        ulke = map["ulke"],
        kurulusTarihi = map["kurulus_tarihi"],
        model =
            List<Model>.from(map["model"].map((it) => Model.fromJsonMap(it)));
}
