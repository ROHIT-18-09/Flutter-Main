import 'dart:async';
import 'package:flutter/material.dart';

class StopwatchExperiemnt extends StatefulWidget {
  const StopwatchExperiemnt({super.key});

  @override
  State<StopwatchExperiemnt> createState() => _StopwatchExperiemntState();
}

class _StopwatchExperiemntState extends State<StopwatchExperiemnt> {
  int seconds = 0;
  late Timer timer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stopwatch Experiment'),
        ),
        body: Center(
          child: Text(
            '$seconds Seconds',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ));
  }

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), _onTick);
  }

  void _onTick(Timer timer) {
    if (mounted) {
      setState(() {
        seconds++;
      });
    }
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }
}