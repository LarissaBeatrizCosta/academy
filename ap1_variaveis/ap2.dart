void main(){
   const n1 = 9.5;
   const n2 = 1.0;
   const n3 = 8.0;
   const n4 = 0.0;

   final media = (n1 + n2 +n3 +n4) / 4;

   if (media < 5){
     final result= media + 1.0;
     print("Sua média ficou ${result.toStringAsFixed(1)}!, "
         "notas: $n1, $n2, $n3 e $n4");
   }
   else {
     print("Parabéns, passou de ano com média ${media.toStringAsFixed(1)}!");
   }

}