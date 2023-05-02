void main(List<String> args) {
  final user = User(id: 20, name: 'john');
  print(user);
  final anonymous = User.anonymous();
  print(anonymous);
}

class User {
  User({this.id = 0, this.name = 'anonymous'});
  User.anonymous() : this();

  @override
  String toString() {
    // TODO: implement toString
    return 'User(id:$id, name:$name)';
  }

  int id;
  String name;
}
