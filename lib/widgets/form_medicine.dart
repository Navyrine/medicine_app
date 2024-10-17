import 'package:flutter/material.dart';
import 'package:medicine_app/datas/categories_item.dart';
import 'package:medicine_app/models/category.dart';
import 'package:medicine_app/models/medicine.dart';

class FormMedicine extends StatefulWidget {
  const FormMedicine({super.key});

  @override
  State<FormMedicine> createState() {
    return _FormMedicineState();
  }
}

class _FormMedicineState extends State<FormMedicine> {
  final _formKey = GlobalKey<FormState>();
  var _selectedCategoryMedicine = categoriesItem[Categories.bebas]!;
  var _enteredName = "";
  TypeMedicine _selectedTypeMedicine = TypeMedicine.bubuk;

  void _saveItem() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.of(context).pop(
        Medicine(
            id: DateTime.now().toString(),
            name: _enteredName,
            type: _selectedTypeMedicine,
            category: _selectedCategoryMedicine),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Medicine"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(label: Text("Name Medicine")),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Value can't be null";
                  }
                  return null;
                },
                onSaved: (value) {
                  _enteredName = value!;
                },
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField(
                value: _selectedCategoryMedicine,
                items: [
                  for (final category in categoriesItem.entries)
                    DropdownMenuItem(
                      value: category.value,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 24,
                            height: 24,
                            child: Image.asset(category.value.logo),
                          ),
                          const SizedBox(width: 6),
                          Text(category.value.name)
                        ],
                      ),
                    )
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedCategoryMedicine = value!;
                  });
                },
              ),
              const SizedBox(height: 12),
              DropdownButtonFormField(
                value: _selectedTypeMedicine,
                items: [
                  for (final type in TypeMedicine.values)
                    DropdownMenuItem(
                      value: type,
                      child: Text(type.name),
                    ),
                ],
                onChanged: (value) {
                  _selectedTypeMedicine = value!;
                },
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      _formKey.currentState!.reset();
                    },
                    child: const Text("Reset"),
                  ),
                  ElevatedButton(
                    onPressed: _saveItem,
                    child: const Text("Save"),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
