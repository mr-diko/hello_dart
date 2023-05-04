import 'dart:convert';

void main(List<String> args) {
  final userObject = User(
    id: 1234,
    name: 'Andrew',
    emails: ['mrdiko@mail.com', 'andrew@gmail.com'],
  );

  final userMap = userObject.toJson();
  final userString = jsonEncode(userMap);

  print(userString);
}

class User {
  const User({
    required this.id,
    required this.name,
    required this.emails,
  });

  final int id;
  final String name;
  final List<String> emails;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'emails': emails,
    };
  }
}
