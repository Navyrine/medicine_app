enum Categories {
  bebas,
  bebas_terbatas,
  keras,
  narkotika,
  fitofarmaka,
  herbal_terstandar,
  herbal
}

class Category {
  const Category({
    required this.name,
    required this.logo
  });
  
  final String name;
  final String logo;
}