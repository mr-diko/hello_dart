void main(List<String> args) {
  constructorExercize();
}

void constructorExercize() {
  final number = PhoneNumber('111-333');
  print(number.value);
}

class PhoneNumber {
  const PhoneNumber(this.value);
  final String value;
}
