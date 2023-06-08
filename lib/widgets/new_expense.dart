import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

var _enteredTitle = '';

void _saveTitleInout(String inputValue) {
  _enteredTitle = inputValue;
}

class _NewExpenseState extends State<NewExpense> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            onChanged: _saveTitleInout,
            maxLength: 50,
            decoration: InputDecoration(label: Text('title')),
          ),
          ElevatedButton(
              onPressed: () {
                print(_enteredTitle);
              },
              child: Text("save"))
        ],
      ),
    );
  }
}
