void main(List<String> args) {
<<<<<<< HEAD
  for (var i = 0; i < numbers.length; i++) {
    print(numbers[i] * numbers[i]);
=======
  final myList = [1, 4, 2, 7, 3, 4, 9];
  myList.sort();
  int? previous;
  for (var element in myList) {
    if (element == previous) {
      print('$element is a duplicate');
      return;
    }
    previous = element;
>>>>>>> e3e95417d128a9b29e2cf8d8d6e6851301dcdd52
  }
}

const numbers = [1, 2, 4, 7];
