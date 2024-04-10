
import 'dart:math';

  String juntarNomes(List<String> nomes, List<String> sobrenomes){
  String nome = nomes[Random().nextInt(nomes.length)];
  String sobrenome = sobrenomes[Random().nextInt(sobrenomes.length)];


  return "$nome $sobrenome";
}



void main (){
   List <String> nomes = ["Ana", "Francisco", "Joao", "Pedro", "Gabriel",
     "Rafaela", "Marcio", "Jose", "Carlos", "Patricia", "Helena", "Camila", "Mateus", "Gabriel",
     "Maria", "Samuel", "Karina", "Antonio", "Daniel", "Joel", "Cristiana", "Sebastião", "Paula"];

   List <String> sobrenomes = ["Silva", "Ferreira", "Almeida", "Azevedo", "Braga", "Barros", "Campos",
     "Cardoso", "Teixeira", "Costa", "Santos", "Rodrigues", "Souza", "Alves", "Pereira", "Lima",
     "Gomes", "Ribeiro", "Carvalho", "Lopes", "Barbosa"];

   juntarNomes(nomes, sobrenomes);
   String nomeCompleto = juntarNomes(nomes, sobrenomes);
   print('Nome completo gerado: $nomeCompleto');
}

// Tempo Gasto: 9min