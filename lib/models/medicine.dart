import 'package:medicine_app/models/category.dart';

enum Type{
  tablet,
  cair,
  bubuk
}

class Medicine {
  const Medicine({
    required this.id,
    required this.name,
    required this.type,
    required this.category,
  });

  final String id;
  final String name;
  final Type type;
  final Category category;
}