import 'package:flutter/material.dart';
import 'package:vdc_incomes_and_expenses/app/ui/constants.dart';
import 'package:vdc_incomes_and_expenses/app/ui/util/size_screen.dart';
import 'package:vdc_incomes_and_expenses/app/ui/widgets/new_transaction/input_type.dart';
import 'package:vdc_incomes_and_expenses/app/ui/widgets/new_transaction/new_transaction_button_widget.dart';
import 'package:vdc_incomes_and_expenses/app/ui/widgets/new_transaction/new_transaction_call_button_widget.dart';
import 'package:vdc_incomes_and_expenses/app/ui/widgets/new_transaction/new_transaction_input.dart';

class NewTransactionBottomSheetWidget extends StatefulWidget {
  const NewTransactionBottomSheetWidget({Key? key}) : super(key: key);

  @override
  State<NewTransactionBottomSheetWidget> createState() =>
      _NewTransactionBottomSheetWidgetState();
}

class _NewTransactionBottomSheetWidgetState
    extends State<NewTransactionBottomSheetWidget> {
  @override
  Widget build(BuildContext context) {
    return NewTransactionCallButtonWidget(
      onPressed: () => showCustomBottomSheet(context),
    );
  }
}

void showCustomBottomSheet(BuildContext context) {
  showModalBottomSheet(
    backgroundColor: customGreen.withOpacity(0.8),
    context: context,
    builder: (_) {
      return (SizedBox(
        height: getScreenH(context) * 0.5,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Adicionar transação',
                style: TextStyle(
                  fontSize: getScreenW(context) * 0.080,
                  color: Colors.grey[900],
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(
              width: getScreenW(context) * 0.70,
              height: getScreenH(context) * 0.35,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  NewTransactionInput(
                    inputType: InputType.dropdown,
                    label: 'Tipo de transação',
                  ),
                  NewTransactionInput(
                    inputType: InputType.normal,
                    label: 'Descrição',
                  ),
                  NewTransactionInput(
                    inputType: InputType.normal,
                    label: 'Valor R\$',
                  ),
                  NewTransactionInput(
                    inputType: InputType.choose,
                    label: 'Recorrente?',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      NewTransactionButtonWidget(
                        text: 'CANCELAR',
                        isFilled: false,
                      ),
                      NewTransactionButtonWidget(
                        text: 'CONFIRMAR',
                        isFilled: true,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ));
    },
  );
}
