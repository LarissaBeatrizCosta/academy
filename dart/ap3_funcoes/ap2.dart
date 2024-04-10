
import 'dart:math';

int funcao1(Function(int) funcaoX){
  var resultA= funcaoX(Random().nextInt(100));
  var resultB= funcaoX(Random().nextInt(100));
  var sumResults = resultB + resultA;
  return sumResults;

}

int funcao2(int num){
  var sum = num * 20;
  return sum;
}

int funcao3(int num){
  var sum = num - 5;
  return sum;
}



void main(){
var result1= funcao1(funcao2);
var result2= funcao1(funcao3);

print(" Resultado de 1 com 2: $result1");
print(" Resultado de 1 com 3: $result2");




}
