import 'package:expense_tracker_app/model/expense.dart';
import 'package:expense_tracker_app/widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    // ListView.builder is appropriate for lists with unknown number of list items
    // it is scrollable and creates the list items only when they are in view or about to become visible
    // This makes it a much more suitable widget than Column in displaying list items - improves app performance.
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => ExpenseItem(
        expenses[index],
      ),
    );
  }
}
