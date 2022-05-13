import 'package:flutter/material.dart';
import 'package:vdc_incomes_and_expenses/app/ui/constants.dart';
import 'package:vdc_incomes_and_expenses/app/ui/util/size_screen.dart';
import 'package:vdc_incomes_and_expenses/app/ui/widgets/new_transaction/input_type.dart';

class NewTransactionInput extends StatefulWidget {
  final InputType inputType;
  final String label;

  const NewTransactionInput({
    Key? key,
    this.inputType = InputType.dropdown,
    required this.label,
  }) : super(key: key);

  @override
  State<NewTransactionInput> createState() => _NewTransactionInputState();
}

class _NewTransactionInputState extends State<NewTransactionInput> {
  InputDecoration getDecoration(String labelText) {
    return InputDecoration(
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
      labelText: labelText,
      labelStyle: TextStyle(color: isFocused ? Colors.white : Colors.grey[900]),
      fillColor: customGreen,
    );
  }

  bool isFocused = false;

  @override
  Widget build(BuildContext context) {
    if (widget.inputType == InputType.normal) {
      return SizedBox(
        height: getScreenH(context) * 0.060,
        child: TextField(
          decoration: getDecoration(widget.label),
          onTap: () => isFocused = !isFocused,
        ),
      );
    } else if (widget.inputType == InputType.dropdown) {
      return Container(
        height: 50,
        child: DropdownButtonFormField(
          decoration: getDecoration(widget.label),
          dropdownColor: customGreen,
          items: <String>['Receita', 'Despesa'].map((value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (String) {},
        ),
      );
    } else {
      return SwitchListTile(
        value: false,
        title: const Text('Despesa recorrente?'),
        contentPadding: EdgeInsets.zero,
        onChanged: (String) {},
      );
    }
  }
}
