class MyUser {
  static const String userCollection = 'User';
  String id;
  String name;
  String email;

  MyUser({required this.id, required this.name, required this.email});

  //todo: from FireStore json=> object
  MyUser.fromFireStore(Map<String, dynamic> data)
    : this(id: data['id'], email: data['email'], name: data['name']);

  //todo: to FireStore object => json
  Map<String, dynamic> toFireStore() {
    return {'id': id, 'name': name, 'email': email};
  }
}
