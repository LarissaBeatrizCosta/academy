import 'dart:math';

var n1 = List.generate(5, (i) => Random().nextInt(100));
var n2 = List.generate(5, (i) => Random().nextInt(100));

void printList(List<int> list) {
  if (list.length != 0) {
    print('Sua lista é: ${list.join(', ')}');
  } else {
    print('Sua lista está vazia!');
  }
}

List<int>? listSum(List<int> listA, List<int> listB) {
  if (listA.length == listB.length) {
    List<int> sumList = [];
    for (var i = 0; i < listA.length; i++) {
      var sumA = listA[i];
      var sumB = listB[i];
      var sum = sumA + sumB;
      sumList.add(sum);
      print('${sumA} + ${sumB}: $sum');
    }
    return sumList;
  } else {
    return [];
  }
}

void main() {
  printList(n1);
  printList(n2);
  var n3 = listSum(n1, n2);
  if (n3 != null) {
    printList(n3);
  }
}