import 'package:flutter/material.dart';
import 'package:taskmaster/core/colors/colors_repository.dart';

class CheckboxWidget extends StatefulWidget {
  const CheckboxWidget({super.key});

  @override
  State<CheckboxWidget> createState() => _CheckboxWidgetState();
}

class _CheckboxWidgetState extends State<CheckboxWidget> {
  bool isChecked = false;

  final Color checkColor = ColorsRepository().lightBlue;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.3,
      child: Checkbox(
        tristate: true,
        value: isChecked,
        side: BorderSide(color: checkColor),
        onChanged: (bool? value) {
          setState(() {
            isChecked = value ?? false;
          });
        },
      ),
    );
  }
}
