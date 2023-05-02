import 'package:hello_dart/user.dart';

void main(List<String> args) {
  final user = User(id: 20, name: 'john');
  print(user);
  final anonymous = User.anonymous();
  print(anonymous);
}
