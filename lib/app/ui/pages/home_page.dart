import 'package:flutter/material.dart';
import 'package:vdc_incomes_and_expenses/app/ui/constants.dart';
import 'package:vdc_incomes_and_expenses/app/ui/util/size_screen.dart';
import 'package:vdc_incomes_and_expenses/app/ui/widgets/balance_card_widget.dart';
import 'package:vdc_incomes_and_expenses/app/ui/widgets/commons/total_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                TotalCardWidget(
                  color: customGreen,
                  totalValue: 'R\$2000,00',
                  transactionType: 'Receita',
                ),
                TotalCardWidget(
                  color: customRed,
                  totalValue: 'R\$1000,00',
                  transactionType: 'Despesa',
                  isFlip: true,
                ),
              ],
            ),
            SizedBox(height: getScreenH(context) * 0.030),
            const BalanceCardWidget(
              color: customRed,
              balanceValue: 'R\$-1000,00',
            ),
          ],
        ),
      ),
    );
  }
}
