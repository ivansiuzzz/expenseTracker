import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key});

  @override
  State<NewExpense> createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();
  void _presentDatePicker() {
    final now = DateTime.now();
    final firstDate = DateTime(now.year - 1, now.month, now.day);
    showDatePicker(
        context: context,
        initialDate: now,
        firstDate: firstDate,
        lastDate: now);
  }

  @override
  void dispose() {
    _titleController.dispose();
    _amountController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: _titleController,
            maxLength: 50,
            decoration: InputDecoration(label: Text('title')),
          ),
          TextField(
            keyboardType: TextInputType.number,
            controller: _amountController,
            maxLength: 50,
            decoration: InputDecoration(
              label: Text('amount'),
              prefixText: '\$ ',
            ),
          ),
          Row(
            children: [
              Text("Select Date"),
              IconButton(
                  onPressed: _presentDatePicker,
                  icon: Icon(Icons.calendar_month))
            ],
          ),
          ElevatedButton(
              onPressed: () {
                print(_titleController.text);
                print(_amountController.text);
              },
              child: Text("save"))
        ],
      ),
    );
  }
}
