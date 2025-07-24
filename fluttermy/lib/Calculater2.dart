import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController ks = TextEditingController();
  String s = "";


  TextEditingController ks1 = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.black,
      elevation: 10,
      color: Colors.blue,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.black, // Use this instead of outer `color`
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white),
              ),
              height: 50,
              child: TextField(
                controller: ks,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  // labelText: 'Enter expression',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                ),
              ),
            ),

            Container(
              decoration: BoxDecoration(
                color: Colors.black, // Set background color here
                // borderRadius: BorderRadius.circular(15),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.white), // Optional
              ),
              height: 50,
              child: TextField(
                controller: ks1,
                readOnly: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  // labelText: 'Result',
                  labelStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),

            // this is row 1
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        s = "";
                        ks.text = s;

                      });
                    },
                    child: Icon(Icons.clear),
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        s = "7";
                        ks.text += s;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("7"),
                  ),
                ),
                SizedBox(width: 5), //its like container

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        s = "8";
                        ks.text += s;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("8"),
                  ),
                ),
                SizedBox(width: 5),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        s = "9";
                        ks.text += s;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("9"),
                  ),
                ),
                SizedBox(width: 5),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        s = "*";
                        ks.text += s;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("*"),
                  ),
                ),
                SizedBox(width: 5),
              ],
            ),

            // this is row 2
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        s = "4";
                        ks.text += s;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("4"),
                  ),
                ),
                SizedBox(width: 5), //its like container

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        s = "5";
                        ks.text += s;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("5"),
                  ),
                ),
                SizedBox(width: 5),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        s = "6";
                        ks.text += s;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("6"),
                  ),
                ),
                SizedBox(width: 5),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        s = "-";
                        ks.text += s;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("-"),
                  ),
                ),
                SizedBox(width: 5),
              ],
            ),

            // this is row 3
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        s = "1";
                        ks.text += s;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("1"),
                  ),
                ),
                SizedBox(width: 5), //its like container

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        s = "2";
                        ks.text += s;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("2"),
                  ),
                ),
                SizedBox(width: 5),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        s = "3";
                        ks.text += s;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("3"),
                  ),
                ),
                SizedBox(width: 5),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        s = "+";
                        ks.text += s;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("+"),
                  ),
                ),
                SizedBox(width: 5),
              ],
            ),

            // this is row 4
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        ks.clear();
                        ks1.clear();
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("CE"),
                  ),
                ),
                SizedBox(width: 5),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // setState(() {
                      //   // ks1.text = ks.text;
                      // });

                      setState(() {
                        try {
                          Parser p = Parser();
                          Expression exp = p.parse(
                            ks.text.replaceAll('×', '*').replaceAll('÷', '/'),
                          );
                          ContextModel cm = ContextModel();
                          double eval = exp.evaluate(EvaluationType.REAL, cm);
                          ks1.text = eval.toString();
                        } catch (e) {
                          ks1.text = 'Error';
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("="),
                  ),
                ),
                SizedBox(width: 5),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        s = "0";
                        ks.text += s;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("0"),
                  ),
                ),
                SizedBox(width: 5),

                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        s = "/";
                        ks.text += s;
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                    ),
                    child: Text("/"),
                  ),
                ),
                SizedBox(width: 5), //its like container
              ],
            ),

          ],
        ),
      ),
    );
  }
}
