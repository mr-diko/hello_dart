void main(List<String> args) {
  final myList = [1, 4, 2, 7, 3, 4, 9];
  myList.sort();
  int? previous;
  for (var element in myList) {
    if (element == previous) {
      print('$element is a duplicate');
      return;
    }
    previous = element;
  }
}
