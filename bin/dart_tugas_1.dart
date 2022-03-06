import 'dart:io';

void main(List<String> arguments) {
  stdout.write("Input : ");
  String? input = stdin.readLineSync();
  int n = int.parse(input!);

  if (n % 2 == 0) {
    // genap
    int leftMarker = 1;
    int rightMarker = n;
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < (n * 2); j++) {
        if (i + j < n) {
          stdout.write(leftMarker);
          leftMarker += 1;
          if (leftMarker > n) {
            leftMarker = 1;
          }
        } else if (j - i >= n) {
          stdout.write(rightMarker);
          rightMarker -= 1;
          if (rightMarker < 1) {
            rightMarker = n;
          }
        } else {
          stdout.write(" ");
        }
      }
      print("");
    }
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
