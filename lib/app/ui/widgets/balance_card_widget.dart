import 'package:flutter/material.dart';

import '../util/size_screen.dart';

class BalanceCardWidget extends StatelessWidget {
  final Color color;
  final String balanceValue;

  const BalanceCardWidget({
    required this.color,
    required this.balanceValue,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: getScreenW(context) * 0.5 / 3,
          width: getScreenW(context) * 0.50,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.red,
              width: 1.5,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                balanceValue,
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: getScreenW(context) * 0.075,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Saldo',
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: getScreenW(context) * 0.035,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: getScreenW(context) * 0.5 / 3,
          width: getScreenW(context) * 0.45,
          margin: EdgeInsets.only(left: getScreenW(context) * 0.025),
          decoration: const BoxDecoration(
            border: Border.symmetric(
              vertical: BorderSide(
                color: Colors.red,
                width: 5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
