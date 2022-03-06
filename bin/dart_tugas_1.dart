import 'dart:io';

void main(List<String> arguments) {
  stdout.write("Input : ");
  String? input = stdin.readLineSync();
  int n = int.parse(input!);

  if (n % 2 == 0) {
    // genap
    print("Genap");
  } else {
    // ganjil => diamond
    int checkMarker = 0;
    int marker = n;
    n = (n ~/ 2) + 1;

    for (int i = 1; i <= n; i++) {
      checkMarker = 0;
      for (int j = 1; j <= (n * 2 - 1); j++) {
        if ((n - j).abs() < i) {
          checkMarker = printMarker(checkMarker);

          if (checkMarker == 1) {
            stdout.write(i);
            marker = i;
          } else {
            stdout.write(" ");
          }
        } else {
          stdout.write("*");
        }
      }
      print("");
    }

    n -= 1;
    marker += 1;
    for (int i = n; i >= 1; i--) {
      checkMarker = 0;
      for (int j = 0; j <= (n * 2); j++) {
        if ((n - j).abs() < i) {
          checkMarker = printMarker(checkMarker);

          if (checkMarker == 1) {
            stdout.write(marker);
          } else {
            stdout.write(" ");
          }
        } else {
          stdout.write("*");
        }
      }
      marker += 1;
      print("");
    }
  } // end of else
}

printMarker(int x) {
  if (x == 0) {
    return 1;
  } else {
    return 0;
  }
}
