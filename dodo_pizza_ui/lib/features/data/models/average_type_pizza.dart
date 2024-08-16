import 'package:dodo_pizza_ui/features/data/models/suplement.dart';

class AveragePizza {
  final String image;
  final String name;
  final String sizePizza;
  final String description;
  final Supplements suplements;

  AveragePizza({
    required this.image,
    required this.name,
    required this.sizePizza,
    required this.description,
    required this.suplements,
  });
}
