// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:vdc_incomes_and_expenses/counter/counter.dart';
import 'package:vdc_incomes_and_expenses/l10n/l10n.dart';

class VdcApp extends StatelessWidget {
  const VdcApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VDC - Receitas e Despesas',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(fontFamily: 'Rajdhani'),
      ),
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      home: const CounterPage(),
    );
  }
}
