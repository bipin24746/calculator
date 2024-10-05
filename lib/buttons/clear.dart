import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Clear extends StatelessWidget {
  final TextEditingController num1Controller;
  final TextEditingController num2Controller;
  final Function(String) SetResult;
  const Clear(
      {super.key,
      required this.num1Controller,
      required this.num2Controller,
      required this.SetResult});
  void clear() {
    num1Controller.clear();
    num2Controller.clear();
    SetResult("0");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: () {
            clear();
          },
          child: Text("Clear")),
    );
  }
}
