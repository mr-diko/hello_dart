import 'dart:convert';

void main(List<String> args) {
  final userObject = User(
    id: 1234,
    name: 'Andrew',
    emails: ['mrdiko@mail.com', 'andrew@gmail.com'],
  );

  final userMap = userObject.toJson();
  final userString = jsonEncode(userMap);
  dynamic jsonMap = jsonDecode(userString);

  if (jsonMap is Map<String, dynamic>) {
    print("You've got a map!");
  } else {
    print('Your JSON must have been in the wrong format.');
  }
  final userMarcia = User.fromJson(jsonMap);

  print(userMarcia);
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

  factory User.fromJson(Map<String, dynamic> jsonMap) {
    dynamic id = jsonMap['id'];
    if (id is! int) id = 0;

    dynamic name = jsonMap['name'];
    if (name is! String) name = '';

    dynamic maybeEmails = jsonMap['emails'];
    final emails = <String>[];
    if (maybeEmails is List) {
      for (dynamic email in maybeEmails) {
        if (email is String) emails.add(email);
      }
    }

    return User(
      id: id,
      name: name,
      emails: emails,
    );
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'emails': emails,
    };
  }

  @override
  String toString() {
    return 'User(id: $id, name: $name, emails: $emails)';
  }
}
