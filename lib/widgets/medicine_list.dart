import 'package:flutter/material.dart';
import 'package:medicine_app/datas/dummy_data.dart';

class MedicineList extends StatefulWidget {
  const MedicineList({super.key});

  @override
  State<MedicineList> createState() {
    return _MedicineListState();
  }
}

class _MedicineListState extends State<MedicineList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Medicine"),
      ),
      body: ListView.builder(
        itemCount: medicineItem.length,
        itemBuilder: (ctx, index) => ListTile(
          title: Text(medicineItem[index].name),
          leading: SizedBox(
            width: 40,
            height: 40,
            child: Image.asset(medicineItem[index].category.logo),
          ),
          trailing: Text(medicineItem[index].type.name.toString()),
        ),
      ),
    );
  }
}
