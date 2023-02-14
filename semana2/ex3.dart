import 'dart:io';
import 'dart:math' as math;

void main() {
  var A = double.parse(stdin.readLineSync()!);
  var B = double.parse(stdin.readLineSync()!);
  var C = double.parse(stdin.readLineSync()!);
  if (A >= (B + C)) {
    print('NÃO FORMA TRIÂNGULO');
  } else {
    if (math.pow(A, 2) == (math.pow(B, 2) + math.pow(C, 2))) {
      print('TRIÂNGULO RETÂNGULO');
    }
    if (math.pow(A, 2) > (math.pow(B, 2) + math.pow(C, 2))) {
      print('TRIÂNGULO OBTUSÂNGULO');
    }
    if (math.pow(A, 2) < (math.pow(B, 2) + math.pow(C, 2))) {
      print('TRIÂNGULO ACUTÂNGULO');
    }
    if (A == B && B == C && A == C) {
      print('TRIÂNGULO EQUILÁTERO');
    } else if (A == B || B == C || A == C) {
      print('TIRÂNGULO ISÓCELES');
    }
  }
}
