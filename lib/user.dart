class User {
  User({int id = 0, String name = 'anonymous'})
      : _name = name,
        _id = id;
  User.anonymous() : this();

  @override
  String toString() {
    return 'User(id:$_id, name:$_name)';
  }

  final int _id;
  final String _name;
}
