import 'package:flutter/material.dart';
import 'package:vdc_incomes_and_expenses/app/ui/constants.dart';

import '../../util/size_screen.dart';

class TransactionCardWidget extends StatelessWidget {
  const TransactionCardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          color: customGreen,
          height: getScreenW(context) * 0.60 / 3,
          width: getScreenW(context) * 0.60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Salário mês 03',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: getScreenW(context) * 0.045,
                    ),
                  ),
                  Text(
                    '07/03/2022',
                    style: TextStyle(
                      fontSize: getScreenW(context) * 0.030,
                      color: Colors.grey[800],
                    ),
                  ),
                  Text(
                    '08:50',
                    style: TextStyle(
                      fontSize: getScreenW(context) * 0.030,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'R\$1100,00',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: getScreenW(context) * 0.06,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: getScreenW(context) * 0.60 / 3,
          width: getScreenW(context) * 0.09,
          decoration: const ShapeDecoration(
            shape: BeveledRectangleBorder(
              side: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.star_sharp,
                color: Colors.grey[300],
                size: 22,
              ),
              Icon(
                Icons.delete_sharp,
                color: Colors.grey[300],
                size: 22,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
