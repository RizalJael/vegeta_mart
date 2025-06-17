// lib/models/vegetable.dart
class Vegetable {
  final int id;
  final String name;
  final String imageUrl;
  final double price;
  final String unit;
  final String description;

  Vegetable({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.unit,
    required this.description,
  });
}
