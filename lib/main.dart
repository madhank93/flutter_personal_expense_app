import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_personal_expense_app/widgets/transaction_list.dart';

void main() => runApp(PersonalExpense());

class PersonalExpense extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expense calculator'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              child: Card(
                child: Text('Chart'),
                elevation: 5,
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      controller: titleController,
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Amount'),
                      controller: amountController,
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Text('Add transactions'),
                      textColor: Colors.redAccent,
                    )
                  ],
                ),
              ),
            ),
            TransactionList(),
          ],
        ),
      ),
    );
  }
}
