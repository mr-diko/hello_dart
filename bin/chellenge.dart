class Student {
  final String firstName;
  final String lastname;
  int grade;
  Student(this.firstName, this.lastname, this.grade);
  @override
  String toString() {
    return '$firstName $lastname: $grade';
  }
}

void main(List<String> args) {
  final dany = Student('Dany', 'Dodik', 22);
  print(dany);
}
