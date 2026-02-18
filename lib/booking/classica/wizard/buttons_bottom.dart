import 'package:flutter/material.dart';

/// Buttons to go forward or back.
class ButtonsBottom extends StatelessWidget {
  final bool isActive;
  final Function() onPressed;
  const ButtonsBottom({
    super.key,
    required this.isActive,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: isActive
          ? "Continua il tuo viaggio"
          : "Completa i campi prima di continuare",
      child: ElevatedButton(
        onPressed: isActive ? () => onPressed() : null,
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(
            isActive ? Colors.blue : Colors.blueGrey,
          ),
        ),
        child: const Text("Continua", style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
