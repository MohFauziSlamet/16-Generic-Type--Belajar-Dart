import 'dart:io';
import 'datetime_securebox.dart';
import 'insecureBox.dart';
import 'secure_box.dart';

void main(List<String> arguments) {
  print('--------------------');
  print('Menampilkan data dengan dengan type data string');
  var box = IntsecureBox('Halo Ludy', '123');
  print(box.getData('123'));
  print('\n');

  print('--------------------');
  print('Menampilkan data dengan dengan type data DateTime');
  var tube = DateTimeSecureBox(DateTime.now(), 'mauludy');
  print(tube.getData('mauludy'));
  print('\n');

  print('---------------------');
  print('Menampilkan data dengan dengan type data generic type');
  var circle = secureBox<String>('Halo ludy', '112233');
  var ball = secureBox<int>(20061999, '123');
  var dateTime = secureBox<DateTime>(DateTime.now(), '123');
  var barochatulMauludy =
      secureBox<Person>(Person('Barochatul Mauludy'), '123');

  print('---generic type diisi dengan string---');
  print(circle.getData('112233'));
  print('\n');

  print('---generic type di isi dengan int---');
  stdout.write(ball.getData('123'));
  print('\n');

  print('---generic type di isi dengan DateTime---');
  print(dateTime.getData('123'));
  print('\n');

  print('---generic type di isi dengan class Person---');
  print(barochatulMauludy.getData('123').name);
  print('\n');
}

// generic_type juga dapat diisi dengan type class sebagai type datanya
class Person {
  String name;

  Person(this.name);
}
