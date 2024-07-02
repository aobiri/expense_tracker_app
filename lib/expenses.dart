import 'package:expense_tracker_app/widgets/expenses_list.dart';
import 'package:expense_tracker_app/model/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _savedExpenses = [
    Expense(
      title: 'Fufu',
      amount: 100,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Macbook laptops',
      amount: 10000,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Massage',
      amount: 750,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    // build returns a widget
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ExpensesList(expenses: _savedExpenses),
          ),
        ],
      ),
    );
  }
}
