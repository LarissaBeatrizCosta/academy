void main(){
  String name = "Larissa";
  String lastName = "Costa";
  int age = 17;
  bool active = false;
  double weight = 53.2;
  String? nationality = "Brasileira";


  print("O seu nome completo é ${name} ${lastName}");


  if (age >= 18) {
    print("Você é maior de idade, com ${age} anos.");
  }
  else{
    print("Você é menor de idade, com ${age} anos.");
  }


  // poderia usar apenas o active na condição
  if (active == true) {
    print("Você está ativo!");
  }
  else{
    print("Você está inativo!");
  }
  print("O seu peso é ${weight}");


  if (nationality != null) {
    print("Você é ${nationality}");
  }
  else{
    print("Você não informou sua nacionalidade!");
  }






}
