import 'package:flutter/material.dart';
import 'package:vdc_incomes_and_expenses/app/ui/constants.dart';
import 'package:vdc_incomes_and_expenses/app/ui/widgets/balance_card_widget.dart';
import 'package:vdc_incomes_and_expenses/app/ui/widgets/commons/total_card_widget.dart';
import 'dart:math' as math;

import 'package:vdc_incomes_and_expenses/app/ui/widgets/commons/transaction_card_widget.dart';
import 'package:vdc_incomes_and_expenses/app/ui/widgets/new_transaction/new_transaction_bottom_sheet_widget.dart';
import 'package:vdc_incomes_and_expenses/app/ui/widgets/new_transaction/new_transaction_button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> _totalCards = [
    const TotalCardWidget(
      color: customGreen,
      totalValue: 'R\$2000,00',
      transactionType: 'Receita',
    ),
    Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(math.pi),
      child: const TotalCardWidget(
        color: customRed,
        totalValue: 'R\$1000,00',
        transactionType: 'Despesa',
        isFlip: true,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Container(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: BalanceCardWidget(
                color: customRed,
                balanceValue: 'R\$-1000,00',
              ),
            ),
            Expanded(
              flex: 1,
              child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return _totalCards[index % _totalCards.length];
                },
              ),
            ),
            const Expanded(
              flex: 1,
              child: Center(child: NewTransactionBottomSheetWidget()),
            ),
            Expanded(
              flex: 4,
              child: ListView(
                children: const [
                  TransactionCardWidget(),
                  SizedBox(height: 10),
                  TransactionCardWidget(),
                  SizedBox(height: 10),
                  TransactionCardWidget(),
                  SizedBox(height: 10),
                  TransactionCardWidget(),
                  SizedBox(height: 10),
                  TransactionCardWidget(),
                ],
              ),
            ),
            Expanded(
              child: Image.asset(
                'assets/images/logo-footer.png',
                width: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
