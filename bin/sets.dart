import 'dart:math';

void main(List<String> args) {
  final randomGenerator = Random();
  final randomintList = <int>[];

  for (var i = 0; i < 10; i++) {
    final randomInt = randomGenerator.nextInt(10) + 1;
    randomintList.add(randomInt);
  }

  final uniqueValues = <int>{};
  final duplicates = <int>{};

  for (int number in randomintList) {
    if (uniqueValues.contains(number)) {
      duplicates.add(number);
    }

    uniqueValues.add(number);
  }
  print(randomintList);
  print(duplicates);
}
















// void main(List<String> args) {
//   final setA = {8, 2, 3, 1, 4};
//   final setB = {1, 6, 5, 4};

//   final intersection = setA.intersection(setB);
//   final union = setA.union(setB);
//   final differenceA = setA.difference(setB);
//   final differnceB = setB.difference(setA);

//   print(differenceA);
// }
