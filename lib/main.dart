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
                child: Text('Chart'),
              ),
            ),
            Column(
                children: transactions.map((transact) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent, width: 2),
                      ),
                      child: Text(
                        transact.amount.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 20,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                    Column(
                      children: <Widget>[
                        Text(transact.title),
                        Text(
                          transact.date.toString(),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList()),
          ],
        ),
      ),
    );
  }
}
