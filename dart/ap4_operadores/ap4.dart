double promocao(int valor, int valorMenor){
  double desconto = (valorMenor / valor) * 100;
  return desconto;
}

void main (){

  int valor = 100;
  int valorMenor= 50;
  double desconto = promocao(valor,valorMenor);
  print("Valor original: $valor, valor final: $valorMenor e desconto: $desconto%");

}