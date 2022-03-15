import 'package:flutter/material.dart';
import 'package:vdc_incomes_and_expenses/app/ui/pages/home_page.dart';

class VdcApp extends StatelessWidget {
  const VdcApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VDC - Receitas e Despesas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Rajdhani',
            ),
      ),
      home: const SafeArea(child: HomePage()),
    );
  }
}
