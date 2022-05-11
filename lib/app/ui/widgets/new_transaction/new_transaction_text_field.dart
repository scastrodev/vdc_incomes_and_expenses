import 'package:flutter/material.dart';
import 'package:vdc_incomes_and_expenses/app/ui/constants.dart';
import 'package:vdc_incomes_and_expenses/app/ui/widgets/new_transaction/input_type.dart';

class NewTransactionTextField extends StatefulWidget {
  final InputType inputType;

  const NewTransactionTextField({
    Key? key,
    this.inputType = InputType.dropdown,
  }) : super(key: key);

  @override
  State<NewTransactionTextField> createState() =>
      _NewTransactionTextFieldState();
}

class _NewTransactionTextFieldState extends State<NewTransactionTextField> {
  InputDecoration defaultBorder = InputDecoration(
    border: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.zero,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey[900]!,
        width: 1,
      ),
      borderRadius: BorderRadius.zero,
    ),
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
        width: 2,
      ),
      borderRadius: BorderRadius.zero,
    ),
  );

  @override
  Widget build(BuildContext context) {
    if (widget.inputType == InputType.normal) {
      return TextField(decoration: defaultBorder);
    } else if (widget.inputType == InputType.dropdown) {
      return DropdownButtonFormField(
        decoration: defaultBorder,
        dropdownColor: customGreen,
        items: <String>['Receita', 'Despesa'].map((value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        onChanged: (String) {},
      );
    } else {
      return const Text('DatePicker');
    }
  }
}
