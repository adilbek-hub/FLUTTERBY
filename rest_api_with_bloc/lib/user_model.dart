import 'dart:convert';

List<User> fromStringList(String source) =>
    (jsonDecode(source) as List).map((e) => User.fromMap(e)).toList();

class User {
  User({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    required this.phone,
    required this.website,
  });
  final int id;
  final String name;
  final String userName;
  final String email;
  final String phone;
  final String website;

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      userName: map['username'] ?? '',
      email: map['email'] ?? '',
      phone: map['phone'] ?? '',
      website: map['website'] ?? '',
    );
  }
}
