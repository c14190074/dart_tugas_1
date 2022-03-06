import 'dart:io';

void main(List<String> arguments) {
  // print('Hello world!');
  stdout.write("Masukkan kata : ");
  String? dtInput = stdin.readLineSync();

  print(dtInput);
}
