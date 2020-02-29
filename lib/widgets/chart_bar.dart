import 'package:flutter/material.dart';

class ChartBar extends StatelessWidget {
  final String weekDayLabel;
  final double spentAmount;
  final double spentTotalAmountPerc;

  ChartBar(this.weekDayLabel, this.spentAmount, this.spentTotalAmountPerc);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        FittedBox(child: Text('\$${spentAmount.toStringAsFixed(0)}')),
        SizedBox(
          height: 4,
        ),
        Container(
          height: 60,
          width: 10,
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey, width: 1.0),
                  color: Color.fromRGBO(220, 220, 220, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              FractionallySizedBox(
                heightFactor: spentTotalAmountPerc,
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor ,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              )
            ],
          ),
        ),
        Text(weekDayLabel),
        SizedBox(
          height: 4,
        )
      ],
    );
  }
}
