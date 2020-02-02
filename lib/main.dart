import 'package:flutter/material.dart';

void main() => runApp(PersonalExpense());

class PersonalExpense extends StatelessWidget {


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
        Card(
          child: Text('cARD 2'),
        ),
          ],
        ),
      ),
    );
  }
}
