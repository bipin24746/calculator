// import 'package:calculator/buttons/addbutton.dart';
// import 'package:calculator/buttons/div.dart';
// import 'package:calculator/buttons/mul.dart';
// import 'package:calculator/buttons/subbutton.dart';
// import 'package:flutter/material.dart';

// class Calculator extends StatefulWidget {
//   const Calculator({super.key});

//   @override
//   State<Calculator> createState() => _CalculatorState();
// }

// class _CalculatorState extends State<Calculator> {
//   TextEditingController num1 = TextEditingController();
//   TextEditingController num2 = TextEditingController();
//   String result = "0";
//   void setResult(String newResult) {
//     setState(() {
//       result = newResult;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           "Simple Calculator",
//           style: TextStyle(color: Colors.white, fontSize: 30),
//         ),
//         backgroundColor: Colors.blue,
//       ),
//       body: Column(children: [
//         Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 controller: num1,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20)),
//                   hintText: "enter first number",
//                 ),
//                 keyboardType: TextInputType.number,
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 controller: num2,
//                 decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                     hintText: "enter second number"),
//                 keyboardType: TextInputType.number,
//               ),
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: AddButton(
//                     num1Controller: num1,
//                     num2Controller: num2,
//                     setResult: setResult,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: SubtractButton(),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: MultiplyButton(),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: DivisionButton(),
//                 )
//               ],
//             )
//           ],
//         ),
//         Column(
//           children: [
//             Container(
//               alignment: Alignment.center,
//               child: SizedBox(
//                 width: 50,
//                 height: 30,
//                 child: DecoratedBox(
//                   decoration: BoxDecoration(
//                     border: Border.all(),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Center(child: Text("$result")),
//                 ),
//               ),
//             ),
//           ],
//         )
//       ]),
//     );
//   }
// }

import 'package:calculator/buttons/addbutton.dart';
import 'package:calculator/buttons/div.dart';
import 'package:calculator/buttons/mul.dart';
import 'package:calculator/buttons/subbutton.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController num1 = TextEditingController();

  TextEditingController num2 = TextEditingController();

  String result = '0';
  void SetResult(String newResult) {
    setState(() {
      result = newResult;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Calculator",
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: num1,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Enter First Number"),
                ),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: num2,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      hintText: "Enter Second Number"),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AddButton(
                  num1Controller: num1,
                  num2Controller: num2,
                  SetResult: SetResult,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SubtractButton(
                  num1Controller: num1,
                  num2Controller: num2,
                  SetResult: SetResult,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MultiplyButton(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DivisionButton(),
              )
            ],
          ),
          Column(
            children: [
              DecoratedBox(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20)),
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: Align(
                        alignment: Alignment.center, child: Text("$result")),
                  ))
            ],
          )
        ],
      ),
    );
  }
}
