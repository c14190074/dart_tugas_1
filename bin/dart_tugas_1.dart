import 'dart:io';

void main(List<String> arguments) {
  stdout.write("Input : ");
  String? input = stdin.readLineSync();
  int n = int.parse(input!);

  if (n % 2 == 0) {
    // genap
    print("Genap");
  } else {
    // ganjil
    print("Ganjil");
  }
}
