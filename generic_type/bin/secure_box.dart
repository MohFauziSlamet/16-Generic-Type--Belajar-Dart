/*
Setelah menggunakan generic type
T merupakan perwakilan dari generic type . 
T ini bisa di ubah menjadi type data apapun pada main.dart
T disini bisa diganti dengan huruf apapun 
*/
class secureBox<T> {
  final T _data;
  final _pin;

  secureBox(this._data, this._pin);

  T getData(String pin) => (pin == _pin) ? _data : null;
}
