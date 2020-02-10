import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_personal_expense_app/widgets/new_transaction.dart';
import 'package:flutter_personal_expense_app/widgets/transaction_list.dart';
import 'package:flutter_personal_expense_app/widgets/user_transactions.dart';

void main() => runApp(PersonalExpense());

class PersonalExpense extends StatelessWidget {

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
            UserTransactions(),
          ],
        ),
      ),
    );
  }
}
