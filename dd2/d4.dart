import 'dart:math' as math;

void main() {
  // Definindo o comparador de formas

  // Definindo as formas geometricas
  final circuloA = Circulo('Circulo A', 3);
  final circuloB = Circulo('Circulo B', 8);
  final retanguloA = Retangulo('Retângulo A', 4, 3);
  final retanguloB = Retangulo('Retângulo B', 19, 11);
  final quadradoA = Quadrado('Quadrado', 4);
  final quadradoB = Quadrado('Quadrado', 20);

  // Comparando áreas dos círculos
  double areaCirculoA = circuloA.calcularArea();
  double areaCirculoB = circuloB.calcularArea();
  CalcularMaiorAreaCirculo(circuloA, areaCirculoA, circuloB, areaCirculoB);
}

abstract class FormaGeometrica {
  String nome;

  FormaGeometrica(this.nome);
}

void CalcularMaiorAreaCirculo(
    Circulo circulo1, double area1, Circulo circulo2, double area2) {
  if (area1 > area2)
    print("O círculo ${circulo1.nome} é maior em area com: ${area1.toStringAsFixed(2)} ");
  else
    print("O círculo ${circulo2.nome} é maior em area com: ${area2.toStringAsFixed(2)} ");
}

abstract class ComparadorFormasGeometricas {
  double calcularArea();

  double calcularPerimetro();
}

/// Representa a forma geometrica "círculo"
// Utilizar herança
// Utilizar polimorfismo
class Circulo extends FormaGeometrica implements ComparadorFormasGeometricas {
  double raio;

  Circulo(String nome, this.raio) : super(nome);

  @override
  double calcularArea() {
    /// Retorna a area desse círculo
    double area = math.pi * math.pow(raio, 2);
    return area;
  }

  @override
  double calcularPerimetro() {
    /// Retorna a perimetro desse círculo
    double perimetro = 2 * math.pi * raio;
    return perimetro;
  }
}

/// Representa a forma geometrica "retangulo"
// Utilizar herança
// Utilizar polimorfismo
class Retangulo extends FormaGeometrica implements ComparadorFormasGeometricas {
  final double largura;
  final double altura;

  Retangulo(String nome, this.largura, this.altura) : super(nome);

  @override
  double calcularArea() {
    /// Retorna a area desse retangulo
    double area = altura * largura;
    return area;
  }

  @override
  double calcularPerimetro() {
    /// Retorna a perimetro desse retangulo
    double perimetro = (altura * 2) + (largura * 2);
    return perimetro;
  }
}

/// Representa a forma geometrica "quadrado"
// Utilizar herança
// Utilizar polimorfismo
class Quadrado extends FormaGeometrica implements ComparadorFormasGeometricas {
  final double lado;

  Quadrado(String nome, this.lado) : super(nome);

  @override
  double calcularArea() {
    /// Retorna a area desse quadrado
    double area = lado * lado;
    return area;
  }

  @override
  double calcularPerimetro() {
    /// Retorna a perimetro desse quadrado
    double perimetro = lado * 4;
    return perimetro;
  }
}
