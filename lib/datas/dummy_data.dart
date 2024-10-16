import 'package:medicine_app/datas/categories_item.dart';
import 'package:medicine_app/models/category.dart';
import 'package:medicine_app/models/medicine.dart';

final medicineItem = [
  Medicine(
    id: "a",
    name: "Antangin",
    type: Type.cair,
    category: categoriesItem[Categories.herbal]!,
  ),
  Medicine(
    id: "b",
    name: "Ambeven",
    type: Type.kapsul,
    category: categoriesItem[Categories.herbal]!,
  ),
  Medicine(
    id: "c",
    name: "Diapet",
    type: Type.kapsul,
    category: categoriesItem[Categories.herbal]!,
  ),
  Medicine(
    id: "d",
    name: "Laxing",
    type: Type.kapsul,
    category: categoriesItem[Categories.herbal]!,
  ),
  Medicine(
    id: "e",
    name: "OBH Combi Herbal",
    type: Type.cair,
    category: categoriesItem[Categories.herbal]!,
  ),
];
