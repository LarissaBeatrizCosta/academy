abstract class Animal {
  void comer() {
    print("Está comendo");
  }

  void beber() {
    print("Está bebendo");

  }
}

class Tigre extends Animal{

  void rugir(){
    print("Está rugindo");

  }
}
void main() {

  var tigrinho = Tigre();
  tigrinho.rugir();
  tigrinho.comer();
  tigrinho.beber();


}
