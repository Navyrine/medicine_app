import 'package:flutter/material.dart';
import 'package:medicine_app/models/medicine.dart';
import 'package:medicine_app/widgets/form_medicine.dart';

class MedicineList extends StatefulWidget {
  const MedicineList({super.key});

  @override
  State<MedicineList> createState() {
    return _MedicineListState();
  }
}

class _MedicineListState extends State<MedicineList> {
  final List<Medicine> _medicineItem = [];

  void _addItem() async
  {
    final newItem = await Navigator.of(context).push<Medicine>(MaterialPageRoute(builder: (ctx) => const FormMedicine()),);

    if (newItem == null) {
      return;
    }

    setState(() {
      _medicineItem.add(newItem);
    });
  }

  void _removeItem(Medicine medicine)
  {
    setState(() {
      _medicineItem.remove(medicine);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(child: Text("No Medicine Item"));

    if (_medicineItem.isNotEmpty) {
      mainContent = ListView.builder(
        itemCount: _medicineItem.length,
        itemBuilder: (ctx, index) => Dismissible(
          key: ValueKey(_medicineItem[index].id),
          child: ListTile(
            title: Text(_medicineItem[index].name),
            leading: SizedBox(
              width: 40,
              height: 40,
              child: Image.asset(_medicineItem[index].category.logo),
            ),
            trailing: Text(_medicineItem[index].type.name.toString()),
          ),
          onDismissed: (direction) {
            _removeItem(_medicineItem[index]);
          },
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Medicine"),
        actions: [
          IconButton(
            onPressed: _addItem,
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: mainContent
    );
  }
}
