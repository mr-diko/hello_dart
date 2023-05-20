Set<String> getUniqueChars(String text) {
  Set<String> uniqueChars = {};

  for (var i = 0; i < text.length; i++) {
    var char = text[i];
    if (!uniqueChars.contains(char)) {
      uniqueChars.add(char);
    }
  }

  return uniqueChars;
}

void main(List<String> args) {
  var paragraph = 'this is a sample paragraph.';
  Set<String> uniqueChars = getUniqueChars(paragraph);
  print(uniqueChars);
}
