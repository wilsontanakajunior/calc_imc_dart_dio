import 'dart:io';

void main() {
  stdout.write('Digite seu nome: ');
  String inputName = stdin.readLineSync()!;
  stdout.write("Digite seu peso: ");
  String inputPeso = stdin.readLineSync()!;
  stdout.write("Digite sua altura: ");
  String inputAltura = stdin.readLineSync()!;
  var pessoa = Pessoa(
    nome: inputName,
    peso: inputPeso,
    altura: inputAltura,
  );
  var result;
  try {
    var pesoDouble = double.tryParse(inputPeso);
    var alturaDouble = double.tryParse(inputAltura);
    result = pesoDouble! / (alturaDouble! * alturaDouble);
  } catch (e) {
    print("Ocorreu um erro na hora de calcular o imc, verifique os dados");
  } finally {
    print("Nome: ${pessoa.nome}");
    print("Peso: ${pessoa.peso}");
    print("Altura: ${pessoa.altura}");
    if (result != null) {
      if (result < 16) {
        print("--MAGREZA--");
        print("O resultado é ${result.toStringAsFixed(2)}");
      } else if (result >= 16 && result < 17) {
        print("--MAGREZA MODERADA--");
        print("O resultado é ${result.toStringAsFixed(2)}");
      } else if (result >= 17 && result < 25) {
        print("--SALDÁVEL--");
        print("O resultado é ${result.toStringAsFixed(2)}");
      } else if (result >= 17 && result < 25) {
        print("--MAGREZA MODERADA--");
        print("O resultado é ${result.toStringAsFixed(2)}");
      } else if (result >= 25 && result < 30) {
        print("--SOBREPESO--");
        print("O resultado é ${result.toStringAsFixed(2)}");
      } else if (result >= 30 && result < 35) {
        print("--OBESO GRAU I--");
        print("O resultado é ${result.toStringAsFixed(2)}");
      } else if (result >= 35 && result < 40) {
        print("--OBESO GRAU II (severa)--");
        print("O resultado é ${result.toStringAsFixed(2)}");
      } else if (result >= 40) {
        print("--OBESO GRAU III (mórbida)--");
        print("O resultado é ${result.toStringAsFixed(2)}");
      }
    }
  }
}

class Pessoa {
  String? nome;
  String? peso;
  String? altura;

  Pessoa({this.nome, this.peso, this.altura});
}
