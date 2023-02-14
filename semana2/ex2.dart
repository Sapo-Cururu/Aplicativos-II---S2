import 'dart:io';

main() {
  double n1 = double.parse(stdin.readLineSync()!);
  double n2 = double.parse(stdin.readLineSync()!);
  double n3 = double.parse(stdin.readLineSync()!);
  double n4 = double.parse(stdin.readLineSync()!);
  double media = (n1 + n2 + n3 + n4) / 4;
  print('Média: ${media.toStringAsFixed(1)}');
  if (media >= 7) {
    print('Aluno aprovado');
  } else if (media < 5) {
    print('Aluno reprovado');
  } else {
    print('Aluno em exame');
    double exame = double.parse(stdin.readLineSync()!);
    print('Nota do exame: $exame');
    if ((media + exame) / 2 >= 5) {
      print('Aluno aprovado');
    } else {
      print('Aluno reprovado');
    }
    print('Média final: ${((media + exame) / 2).toStringAsFixed(2)}');
  }
}
