import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubtractButton extends StatelessWidget {
  const SubtractButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
          ElevatedButton(onPressed: () {}, child: Icon(CupertinoIcons.minus)),
    );
  }
}
