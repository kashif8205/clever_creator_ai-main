import 'dart:async';
import 'package:flutter/material.dart';

class TimerButtonWidget extends StatefulWidget {
  @override
  _TimerButtonWidgetState createState() => _TimerButtonWidgetState();
}

class _TimerButtonWidgetState extends State<TimerButtonWidget> {
  int seconds = 0;
  late Timer _timer;
  bool isTimerRunning = false;

  void _toggleTimer() {
    if (isTimerRunning) {
      // Stop the timer
      _timer.cancel();
    } else {
      // Start the timer
      _timer = Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          seconds++;
        });
      });
    }

    setState(() {
      isTimerRunning = !isTimerRunning;
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Ensure the timer is cancelled when the widget is disposed
    super.dispose();
  }

  String _formatTime(int seconds) {
    int hours = seconds ~/ 3600;
    int minutes = (seconds % 3600) ~/ 60;
    int remainingSeconds = seconds % 60;

    return '${_twoDigit(hours)}:${_twoDigit(minutes)}:${_twoDigit(remainingSeconds)}';
  }

  String _twoDigit(int number) {
    return number.toString().padLeft(2, '0');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Timer Button Example')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              _formatTime(seconds),
              style: TextStyle(fontSize: 40),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _toggleTimer,
              child: Text(isTimerRunning ? 'Stop Timer' : 'Start Timer'),
            ),
          ],
        ),
      ),
    );
  }
}
