import 'package:uuid/uuid.dart';

final uuid = Uuid();

class Expense {
  Expense({required this.title, required this.amount, required this.date})
      : id = uuid.v1();

  final String title;
  final double amount;
  final String id;
  final DateTime date;
}
