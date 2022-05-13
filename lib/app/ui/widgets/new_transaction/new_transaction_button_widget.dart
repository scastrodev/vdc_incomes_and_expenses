import 'package:flutter/material.dart';
import 'package:vdc_incomes_and_expenses/app/ui/constants.dart';
import 'package:vdc_incomes_and_expenses/app/ui/util/size_screen.dart';

class NewTransactionButtonWidget extends StatelessWidget {
  final String text;
  final bool isFilled;

  const NewTransactionButtonWidget({
    Key? key,
    required this.text,
    required this.isFilled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getScreenW(context) * 0.32,
      height: getScreenH(context) * 0.050,
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: getScreenW(context) * 0.045,
          ),
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: BeveledRectangleBorder(
            side: BorderSide(
              color: Colors.grey[900]!,
            ),
          ),
          primary: isFilled ? customGreen2 : Colors.transparent,
        ),
        onPressed: () {},
      ),
    );
  }
}
