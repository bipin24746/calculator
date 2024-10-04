import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubtractButton extends StatelessWidget {
  final TextEditingController num1Controller;
  final TextEditingController num2Controller;
  final Function(String) SetResult;
  const SubtractButton(
      {super.key,
      required this.num1Controller,
      required this.num2Controller,
      required this.SetResult});

  void subtraction() {
    try {
      int num1 = int.parse(num1Controller.text);
      int num2 = int.parse(num2Controller.text);
      String result = (num1 - num2).toString();
      SetResult(result);
    } catch (e) {
      SetResult("Error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: () {
            subtraction();
          },
          child: Icon(CupertinoIcons.minus)),
    );
  }
}
