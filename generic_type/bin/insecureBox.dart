// Sebelum menggunakan generic_type
class IntsecureBox {
  final _data;
  final _pin;

  IntsecureBox(this._data, this._pin);

  String getData(String pin) => (pin == _pin) ? _data : null;
}
