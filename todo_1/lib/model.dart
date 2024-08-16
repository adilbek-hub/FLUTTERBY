import 'dart:convert';

class Todo {
  Todo({
    required this.title,
    this.description,
    required this.isComplated,
    required this.author,
    this.id,
  });
  String? id;
  final String title;
  final String? description;
  final bool isComplated;
  final String author;

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'isComplated': isComplated,
      'author': author,
    };
  }

  factory Todo.fromFirestore(Map<String, dynamic> data) {
    return Todo(
      title: data['title'] ?? '',
      description: data['description'],
      isComplated: data['isComplated'] ?? false,
      author: data['author'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Todo.fromJson(String source) =>
      Todo.fromFirestore(json.decode(source));
}
