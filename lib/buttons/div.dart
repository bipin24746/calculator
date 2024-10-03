import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DivisionButton extends StatelessWidget {
  const DivisionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          ElevatedButton(onPressed: () {}, child: Icon(CupertinoIcons.divide)),
    );
  }
}
