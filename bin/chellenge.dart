void main(List<String> args) {
  final ray = Name(givenName: 'Ray', surname: 'Vanderlih');
  print(ray);
}

class Name {
  Name({
    required this.givenName,
    this.surname,
    this.surnameIsFirst = false,
  });

  final String givenName;
  final String? surname;
  final bool surnameIsFirst;

  @override
  String toString() {
    if (surname == null) {
      return givenName;
    }
    if (surnameIsFirst) {
      return "$surname $givenName";
    }
    return "$givenName $surname";
  }
}

// class Student {
//   final String firstName;
//   final String lastname;
//   int grade;
//   Student(this.firstName, this.lastname, this.grade);
//   @override
//   String toString() {
//     return '$firstName $lastname: $grade';
//   }
// }