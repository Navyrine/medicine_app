import 'package:flutter/material.dart';
import 'package:medicine_app/models/category.dart';

class CategoriesItem {
  final Map<Categories, Category> categoriesItem = {
    Categories.bebas: const Category(
      name: "Obat Bebas",
      logo: Image(
        image: AssetImage("assets/images/obat_bebas.png"),
      ),
    ),
    Categories.bebas_terbatas: const Category(
      name: "Obat Bebas Terbatas",
      logo: Image(
        image: AssetImage("assets/images/obat_bebas_terbatas.png"),
      ),
    ),
    Categories.keras: const Category(
      name: "Obat keras",
      logo: Image(
        image: AssetImage("assets/images/obat_keras.png"),
      ),
    ),
    Categories.narkotika: const Category(
      name: "Narkotika",
      logo: Image(
        image: AssetImage("assets/images/narkotika.png"),
      ),
    ),
    Categories.herbal: const Category(
      name: "Jamu",
      logo: Image(
        image: AssetImage("assets/images/herbal_jamu.png"),
      ),
    ),
    Categories.herbal_terstandar: const Category(
      name: "Herbal Terstandar",
      logo: Image(
        image: AssetImage("assets/images/obat_bebas.png"),
      ),
    ),
    Categories.fitofarmaka: const Category(
      name: "Fitofarmaka",
      logo: Image(
        image: AssetImage("assets/images/firfarmaka.png"),
      ),
    ),
  };
}
