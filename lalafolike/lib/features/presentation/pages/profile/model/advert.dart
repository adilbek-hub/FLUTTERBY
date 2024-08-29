import 'package:cloud_firestore/cloud_firestore.dart';
class Advert {
  final String newTag;
  final String title;
  final String description;
  final String button;

  Advert({
    required this.newTag,
    required this.title,
    required this.description,
    required this.button,
  });

  factory Advert.fromDocument(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return Advert(
      newTag: data['new'] ?? '',
      title: data['title'] ?? '',
      description: data['description'] ?? '',
      button: data['button'] ?? '',
    );
  }
}

