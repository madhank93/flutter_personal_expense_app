import 'package:flutter/material.dart';
import 'package:flutter_personal_expense_app/models/transcation.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransactions = [
    Transaction(id: '001', title: 'shoe', amount: 102.50, date: DateTime.now()),
    Transaction(
        id: '002', title: 'Watch', amount: 5075.50, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransactions.map((transact) {
        return Card(
          child: Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.redAccent,
                    width: 2,
                  ),
                ),
                child: Text(
                  '\$${transact.amount}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.redAccent,
                  ),
                ),
                padding: EdgeInsets.all(10),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    transact.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    DateFormat().add_yMMMd().format(transact.date),
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
