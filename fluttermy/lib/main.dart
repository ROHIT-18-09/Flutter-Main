import 'package:flutter/material.dart';
// import 'Column.dart';
// import 'Container.dart';
// import 'calculator.dart';
import 'stop_watch.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: StopwatchExperiemnt()
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
