import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MultiplyButton extends StatelessWidget {
  final TextEditingController num1COntroller;
  final TextEditingController num2Controller;
  final Function(String) SetResult;

  const MultiplyButton(
      {super.key,
      required this.num1COntroller,
      required this.num2Controller,
      required this.SetResult});

  void multiply() {
    try {
      int num1 = int.parse(num1COntroller.text);
      int num2 = int.parse(num2Controller.text);
      String result = (num1 * num2).toString();
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
            multiply();
          },
          child: Icon(CupertinoIcons.multiply)),
    );
  }
}
