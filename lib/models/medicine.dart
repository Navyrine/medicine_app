import 'package:medicine_app/models/category.dart';

enum TypeMedicine{
  tablet,
  cair,
  bubuk,
  kapsul
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
  final TypeMedicine type;
  final Category category;
}