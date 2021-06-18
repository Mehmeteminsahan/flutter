class Burc {
  String _burcAdi, _burcTarih, _burcDetay, _burcKucukResim, _burcBuyukResim;

  Burc(this._burcAdi, this._burcTarih, this._burcDetay, this._burcKucukResim,
      this._burcBuyukResim);

  get burcBuyukResim => _burcBuyukResim;

  set burcBuyukResim(value) {
    _burcBuyukResim = value;
  }

  get burcKucukResim => _burcKucukResim;

  set burcKucukResim(value) {
    _burcKucukResim = value;
  }

  get burcDetay => _burcDetay;

  set burcDetay(value) {
    _burcDetay = value;
  }

  get burcTarih => _burcTarih;

  set burcTarih(value) {
    _burcTarih = value;
  }

  String get burcAdi => _burcAdi;

  set burcAdi(String value) {
    _burcAdi = value;
  }
}
