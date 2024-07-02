import 'package:uuid/uuid.dart';

const uuid = Uuid();

// enum is used to create custom properties with fixed values, like categories
enum Category { food, travel, leisure, work }

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();
  // Initializer Lists - this would initialize the value of id anytime the object (the constructor) is created.

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}
