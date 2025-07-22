import 'package:flutter/material.dart';

class CalculatorPart extends StatelessWidget {
  const CalculatorPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Expanded(child: Text("0"))],
            ),
          ),
          Expanded(child: row1()),
          Expanded(child: row2()),
          Expanded(child: row3()),
          Expanded(child: row4()),
          Expanded(child: row5()),
        ],
      ),
    );
  }

  Row row1() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: ElevatedButton(onPressed: null, child: Text("MC"))),
        SizedBox(width: 5),
        Expanded(child: ElevatedButton(onPressed: null, child: Text("MR"))),
        SizedBox(width: 5),
        Expanded(child: ElevatedButton(onPressed: null, child: Text("M+"))),
        SizedBox(width: 5),
        Expanded(child: ElevatedButton(onPressed: null, child: Text("M-"))),
        SizedBox(width: 5),
        Expanded(child: ElevatedButton(onPressed: null, child: Text("MS"))),
        SizedBox(width: 5),
        Expanded(child: ElevatedButton(onPressed: null, child: Text("M^"))),
      ],
    );
  }

  Row row2() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: ElevatedButton(onPressed: null, child: Text("1"))),
        SizedBox(width: 5),
        Expanded(child: ElevatedButton(onPressed: null, child: Text("2"))),
        SizedBox(width: 5),
        Expanded(child: ElevatedButton(onPressed: null, child: Text("3"))),
        SizedBox(width: 5),
        Expanded(child: ElevatedButton(onPressed: null, child: Text("AC"))),
        SizedBox(width: 5),
        Expanded(child: ElevatedButton(onPressed: null, child: Text("+"))),
      ],
    );
  }

  Row row3() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: ElevatedButton(onPressed: null, child: Text("4"))),
        SizedBox(width: 5),
        Expanded(child: ElevatedButton(onPressed: null, child: Text("5"))),
        SizedBox(width: 5),
        Expanded(child: ElevatedButton(onPressed: null, child: Text("6"))),
        SizedBox(width: 5),
        Expanded(child: ElevatedButton(onPressed: null, child: Text("√"))),
        SizedBox(width: 5),
        Expanded(child: ElevatedButton(onPressed: null, child: Text("-"))),
      ],
    );
  }

  Row row4() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: ElevatedButton(onPressed: null, child: Text("7"))),
        SizedBox(width: 5),
        Expanded(child: ElevatedButton(onPressed: null, child: Text("8"))),
        SizedBox(width: 5),
        Expanded(child: ElevatedButton(onPressed: null, child: Text("9"))),
        SizedBox(width: 5),
        Expanded(child: ElevatedButton(onPressed: null, child: Text("x^2"))),
        SizedBox(width: 5),
        Expanded(child: ElevatedButton(onPressed: null, child: Text("*"))),
      ],
    );
  }

  Row row5() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: ElevatedButton(onPressed: null, child: Text("0"))),
        SizedBox(width: 5),
        Expanded(child: ElevatedButton(onPressed: null, child: Text("C"))),
        SizedBox(width: 5),
        Expanded(child: ElevatedButton(onPressed: null, child: Text("%"))),
        SizedBox(width: 5),
        Expanded(child: ElevatedButton(onPressed: null, child: Text("/"))),
        SizedBox(width: 5),
        Expanded(child: ElevatedButton(onPressed: null, child: Text("="))),
      ],
    );
  }
}
