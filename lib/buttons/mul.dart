import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MultiplyButton extends StatelessWidget {
  const MultiplyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: () {}, child: Icon(CupertinoIcons.multiply)),
    );
  }
}
