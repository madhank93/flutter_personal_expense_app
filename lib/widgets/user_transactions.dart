import 'package:flutter/material.dart';

import 'package:flutter_personal_expense_app/models/transcation.dart';
import 'package:flutter_personal_expense_app/widgets/new_transaction.dart';
import 'package:flutter_personal_expense_app/widgets/transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(id: '001', title: 'shoe', amount: 102.50, date: DateTime.now()),
    Transaction(id: '002', title: 'Watch', amount: 5075.50, date: DateTime.now())
  ];

  void _addNewTransactions(String title, double amount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransactions),
        TransactionList(_userTransactions),
      ],
    );
  }
}
