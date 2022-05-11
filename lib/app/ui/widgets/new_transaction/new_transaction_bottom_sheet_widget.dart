import 'package:flutter/material.dart';
import 'package:vdc_incomes_and_expenses/app/ui/constants.dart';
import 'package:vdc_incomes_and_expenses/app/ui/util/size_screen.dart';
import 'package:vdc_incomes_and_expenses/app/ui/widgets/new_transaction/input_type.dart';
import 'package:vdc_incomes_and_expenses/app/ui/widgets/new_transaction/new_transaction_button_widget.dart';
import 'package:vdc_incomes_and_expenses/app/ui/widgets/new_transaction/new_transaction_text_field.dart';

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
    return NewTransactionButtonWidget(
      onPressed: () => showCustomBottomSheet(context),
    );
  }
}

void showCustomBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (_) {
      return (Container(
        height: getScreenH(context) * 0.5,
        color: customGreen,
        child: Column(
          children: const [
            Text('Adicionar transação'),
            NewTransactionTextField(inputType: InputType.dropdown),
          ],
        ),
      ));
    },
  );
}
