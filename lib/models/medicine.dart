enum Type{
  tablet,
  cair,
  bubuk
}

class Medicine {
  const Medicine({
    required this.id,
    required this.name,
    required this.type
  });

  final String id;
  final String name;
  final Type type;
}