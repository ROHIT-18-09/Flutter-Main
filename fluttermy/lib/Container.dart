import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.amber,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            color: Colors.blue,
            child: Padding(
                padding: EdgeInsets.all(20),
                child: Container(
                  color: Colors.pink,
                  child: Text("Hello"),
                )),
          ),
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutterceadivision/1507flutter/containerexperiment.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: CustomContainer(),
//         // body: Center(
//         //   child: Text('3456789'),
//         // ),
//       ),
//     );
//   }
// }