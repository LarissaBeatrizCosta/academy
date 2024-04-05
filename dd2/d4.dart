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
  final trianguloEquilateroA = TrianguloEquilatero('Triângulo Equilátero A', 5);
  final trianguloEquilateroB = TrianguloEquilatero('Triângulo Equilátero B', 10);
  final pentagonoRegularA = PentagonoRegular('Pentágono Regular A', 6, 10);
  final pentagonoRegularB = PentagonoRegular('Pentágono Regular B', 8, 12);
  final hexagonoRegularA = HexagonoRegular('Hexágono Regular A', 7, 9);
  final hexagonoRegularB = HexagonoRegular('Hexágono Regular B', 10, 14);

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

  // Comparando áreas dos triângulos equiláteros
  double areaTrianguloEquilateroA = trianguloEquilateroA.calcularArea();
  double areaTrianguloEquilateroB = trianguloEquilateroB.calcularArea();
  CalcularMaiorArea(trianguloEquilateroA, areaTrianguloEquilateroA,
      trianguloEquilateroB, areaTrianguloEquilateroB);

  // Comparando áreas dos pentágonos regulares
  double areaPentagonoRegularA = pentagonoRegularA.calcularArea();
  double areaPentagonoRegularB = pentagonoRegularB.calcularArea();
  CalcularMaiorArea(pentagonoRegularA, areaPentagonoRegularA, pentagonoRegularB,
      areaPentagonoRegularB);

  // Comparando áreas dos hexágonos regulares
  double areaHexagonoRegularA = hexagonoRegularA.calcularArea();
  double areaHexagonoRegularB = hexagonoRegularB.calcularArea();
  CalcularMaiorArea(hexagonoRegularA, areaHexagonoRegularA, hexagonoRegularB,
      areaHexagonoRegularB);
}

abstract class FormaGeometrica {
  String nome;

  FormaGeometrica(this.nome);
}

void CalcularMaiorArea(FormaGeometrica forma1, double area1,
    FormaGeometrica forma2, double area2) {
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

/// Representa a forma geométrica "triângulo equilátero"
class TrianguloEquilatero extends FormaGeometrica
    implements ComparadorFormasGeometricas {
  final double lado;

  TrianguloEquilatero(String nome, this.lado) : super(nome);

  @override
  double calcularArea() {
    /// Retorna a área desse triângulo equilátero
    double area = (math.sqrt(3) / 4) * math.pow(lado, 2);
    return area;
  }

  @override
  double calcularPerimetro() {
    /// Retorna o perímetro desse triângulo equilátero
    double perimetro = lado * 3;
    return perimetro;
  }
}

/// Representa a forma geométrica "pentágono regular"
class PentagonoRegular extends FormaGeometrica
    implements ComparadorFormasGeometricas {
  final double lado;
  final double apotema;

  PentagonoRegular(String nome, this.lado, this.apotema) : super(nome);

  @override
  double calcularArea() {
    /// Retorna a área desse pentágono regular
    double area = (5 / 2) * lado * apotema;
    return area;
  }

  @override
  double calcularPerimetro() {
    /// Retorna o perímetro desse pentágono regular
    double perimetro = lado * 5;
    return perimetro;
  }
}

/// Representa a forma geométrica "hexágono regular"
class HexagonoRegular extends FormaGeometrica implements ComparadorFormasGeometricas {
  final double lado;
  final double apotema;

  HexagonoRegular(String nome, this.lado, this.apotema) : super(nome);

  @override
  double calcularArea() {
    /// Retorna a área desse hexágono regular
    double area = (3 * math.sqrt(3) * math.pow(lado, 2)) / 2;
    return area;
  }

  @override
  double calcularPerimetro() {
    /// Retorna o perímetro desse hexágono regular
    double perimetro = lado * 6;
    return perimetro;
  }
}

// TEMPO GASTO: 2HRS E 28MIN;
