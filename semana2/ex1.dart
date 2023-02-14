import "dart:io";
main() {
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  int c = int.parse(stdin.readLineSync()!);
  int d = int.parse(stdin.readLineSync()!);
  if (b > c && d > a && (c + d) > (a + b) && c >= 0 && d >= 0 && a % 2 == 0) {
    print('valores aceitos');
  } else {
    print('valores não aceitos');
  }
}
