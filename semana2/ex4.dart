import 'dart:io';

main() {
  bool j1 = false;
  String? escolha = '';
  int j1num = 0;
  int j2num = 0;

  while (true) {
    print('Jogador 1 escolha Par (p) ou Ímpar (i)');
    escolha = stdin.readLineSync();
    if (escolha == 'p' || escolha == 'i') {
      break;
    }
    print('-' * 25);
    print('*Erro* Valor não aceito');
    print('-' * 25);
  }
  j1 = escolha == 'p';
  while (true) {
    print('Jogador 1 escolha seu número');
    j1num = int.parse(stdin.readLineSync()!);
    print('Jogador 2 escolha seu número');
    j2num = int.parse(stdin.readLineSync()!);
    if (j1num >= 0 && j2num >= 0) {
      break;
    }
    print('-' * 25);
    print('*Erro* Valor(es) não aceito(s)');
    print('-' * 25);
  }
  int jogo = (j1num + j2num) % 2;
  if (jogo == 0 && j1) {
    print('Jogador 1 ganhou');
  } else if (jogo != 0 && j1 == false) {
    print('Jogador 1 ganhou');
  } else {
    print('Jogador 2 ganhou');
  }
}
