import 'package:medicine_app/models/category.dart';

final Map<Categories, Category> categoriesItem = {
  Categories.bebas: const Category(
    name: "Obat Bebas",
    logo: "assets/images/obat_bebas.png",
  ),
  Categories.bebas_terbatas: const Category(
    name: "Obat Bebas Terbatas",
    logo: "assets/images/obat_bebas_terbatas.png",
  ),
  Categories.keras: const Category(
    name: "Obat keras",
    logo: "assets/images/obat_keras.png",
  ),
  Categories.narkotika: const Category(
    name: "Narkotika",
    logo: "assets/images/narkotika.png",
  ),
  Categories.herbal: const Category(
    name: "Jamu",
    logo: "assets/images/herbal_jamu.png",
  ),
  Categories.herbal_terstandar: const Category(
    name: "Herbal Terstandar",
    logo: "assets/images/obat_bebas.png",
  ),
  Categories.fitofarmaka: const Category(
    name: "Fitofarmaka",
    logo: "assets/images/firfarmaka.png",
  ),
};
