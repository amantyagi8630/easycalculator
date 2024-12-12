import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  final List<Widget> buttons;

  const ButtonRow({
    super.key,
    required this.buttons,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: buttons,
    );
  }
}
