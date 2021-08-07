class Model {
  String mode_Ad;
  int fiyat;
  bool benzinli;

  Model.fromJsonMap(Map<String, dynamic> map)
      : mode_Ad = map["model_adi"],
        fiyat = map["fiyat"],
        benzinli = map["benzinli"];
}
