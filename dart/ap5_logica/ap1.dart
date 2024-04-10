List<int> ehImpar(List<int> n) {
  List<int> lista2 = [];
  for( var num in n){
    if (num % 2 != 0) {
      lista2.add(num);
    }
  }
  return lista2;
}

void imprimir(List<int> list2){
  for(var item in list2){
    print("Impar: $item");
  }
}



void main() {
  List<int> list1 =[0,1,2,3,4,5,6,7,8,9,10];
  imprimir(ehImpar(list1));
}
