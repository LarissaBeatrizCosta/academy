class Retangulo {
  double largura;
  double altura;

  Retangulo(this.largura, this.altura);

  double calcularArea() {
    var area = largura * altura;
    return area;
  }
}

void main() {
  var retangulo = Retangulo(20.5, 10);
  var area = retangulo.calcularArea();
  print("A rea do retângulo é: $area");

}

