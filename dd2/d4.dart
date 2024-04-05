import 'dart:math' as math;

void main() {
  // Definindo o comparador de formas

  // Definindo as formas geometricas
  final circuloA = Circulo('Circulo A', 3);
  final circuloB = Circulo('Circulo B', 8);
  final retanguloA = Retangulo('Retângulo A', 4, 3);
  final retanguloB = Retangulo('Retângulo B', 19, 11);
  final quadradoA = Quadrado('Quadrado A', 4);
  final quadradoB = Quadrado('Quadrado B', 20);

  // Comparando áreas dos círculos
  double areaCirculoA = circuloA.calcularArea();
  double areaCirculoB = circuloB.calcularArea();
  CalcularMaiorArea(circuloA, areaCirculoA, circuloB, areaCirculoB);

  // Comparando áreas dos retângulos
  double areaRetanguloA = retanguloA.calcularArea();
  double areaRetanguloB = retanguloB.calcularArea();
  CalcularMaiorArea(retanguloA, areaRetanguloA, retanguloB, areaRetanguloB);

  // Comparando áreas dos quadrados
  double areaQuadradoA = quadradoA.calcularArea();
  double areaQuadradoB = quadradoB.calcularArea();
  CalcularMaiorArea(quadradoA, areaQuadradoA, quadradoB, areaQuadradoB);
}

abstract class FormaGeometrica {
  String nome;

  FormaGeometrica(this.nome);
}

void CalcularMaiorArea(FormaGeometrica forma1, double area1, FormaGeometrica forma2, double area2) {
  if (area1 > area2)
    print("A ${forma1.nome} é maior em área com: ${area1.toStringAsFixed(2)} ");
  else
    print("A ${forma2.nome} é maior em área com: ${area2.toStringAsFixed(2)} ");
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
