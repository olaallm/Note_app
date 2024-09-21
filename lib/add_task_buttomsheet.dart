import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskBottomSheet extends StatefulWidget {
  const AddTaskBottomSheet({super.key});

  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  final formKey = GlobalKey<FormState>();
  var selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: Column(
        children: [
          const Text(
            "Add New Note",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Please enter a note';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "Enter Your Note",
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Please enter a note description';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    hintText: "Enter Note Description",
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Select Date"),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: showCalendar,
                    child: Text(
                      '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: addTask,
                  child: const Text('Add'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> showCalendar() async {
    var chosenDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (chosenDate != null) {
      setState(() {
        selectedDate = chosenDate;
      });
    }
  }

  void addTask() {
    if (formKey.currentState?.validate() == true) {
      // Add task logic here
    }
  }
}
