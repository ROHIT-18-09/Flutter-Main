import 'package:flutter/material.dart';
// import 'package:flutterceadivision/1507flutter/containerexperiment.dart';
// import 'package:flutterceadivision/2207fluttwer/calculatorview.dart';
import 'login.dart';
import 'stopwatch.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      // home: StopwatchExperiemnt()
      // home: CalculatorPart()
      // home: ColumnExperiment(),
      // home: CustomContainer(),
      // home: Scaffold(
      //   body: CustomContainer(),
      //   // body: Center(
      //   //   child: Text('3456789'),
      //   // ),
      // ),
    );
  }
}
