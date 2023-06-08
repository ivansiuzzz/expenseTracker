import 'package:expensetracker/widgets/expenses_list/expenses_list.dart';
import 'package:expensetracker/model/Expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: "Buy Keyboard",
        amount: 1599,
        date: DateTime.now(),
        category: Category.leisure),
    Expense(
        title: "Eat dinner",
        amount: 1599,
        date: DateTime.now(),
        category: Category.food),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("The chart"),
          Expanded(child: ExpensesList(expenses: _registeredExpenses))
        ],
      ),
    );
  }
}
