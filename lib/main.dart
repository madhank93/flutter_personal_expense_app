import 'package:flutter/material.dart';
import 'package:flutter_personal_expense_app/transcation.dart';

void main() => runApp(PersonalExpense());

class PersonalExpense extends StatelessWidget {
  final List<Transcation> transactions = [
    Transcation(id: '001', title: 'shoe', amount: 102.50, date: DateTime.now()),
    Transcation(
        id: '002', title: 'Watch', amount: 5075.50, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expense calculator'),
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Card(
                child: Text('Card 1'),
              ),
            ),
            Column(
                children: transactions.map((transact) {
              return Card(
                child: Text(transact.title),
              );
            }).toList()),
          ],
        ),
      ),
    );
  }
}
