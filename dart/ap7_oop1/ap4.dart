import 'dart:math';


class Pessoa {
  String _nome;
  int _idade;
  double _altura;

  Pessoa(this._nome, this._idade, this._altura);

  set idade(int valor) {
    if (valor >= 0) {
      _idade = valor;
    }else print("Insira uma idade válida");
  }

  int get idade{
    return _idade;
  }
  double get altura{
    return _altura;
  }
  String get nome{
    return _nome;
  }

  set nome(String nome){
    _nome = nome;
  }

  set altura(double altura){
    _altura =altura;
  }
}

void main() {
  var pessoa = Pessoa("Larissa",Random().nextInt(99) + 1, (Random().nextDouble() * 1.3) + 1);
  print("Nome:${pessoa.nome}\n Idade:${pessoa.idade}\n Altura:${pessoa.altura.toStringAsFixed(2)} ");



}



