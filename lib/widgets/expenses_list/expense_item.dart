import 'package:expensetracker/model/Expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.expense});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Text('${expense.title}'),
            SizedBox(height: 4),
            Row(
              children: [
                Text('\$ ${expense.amount.toString()}'),
                SizedBox(
                  width: 80,
                ),
                Icon(Icons.date_range),
                Text(expense.date.toString())
              ],
            )
          ],
        ),
      ),
    );
  }
}
