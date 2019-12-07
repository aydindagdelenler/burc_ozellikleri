class Burc {

  String _burcAdi;
  String _burcTarihi;
  String _kucukResim;
  String _buyukResim;
  String _burcDetayi;

  Burc(this._burcAdi, this._burcTarihi, this._kucukResim, this._buyukResim, this._burcDetayi);

  String get buyukResim => _buyukResim;

  set buyukResim(String value) {
    _buyukResim = value;
  }

  String get kucukResim => _kucukResim;

  set kucukResim(String value) {
    _kucukResim = value;
  }

  String get burcTarihi => _burcTarihi;

  set burcTarihi(String value) {
    _burcTarihi = value;
  }

  String get burcAdi => _burcAdi;

  set burcAdi(String value) {
    _burcAdi = value;
  }

  String get burcDetayi => _burcDetayi;

  set burcDetayi(String value) {
    _burcDetayi = value;
  }
}