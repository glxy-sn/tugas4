import 'dart:async';
import 'package:flutter/material.dart';

class StopwatchPage extends StatefulWidget {
  @override
  _StopwatchPageState createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {
  Timer _timer = Timer.periodic(Duration(milliseconds: 10), (timer){});
  int _elapsedTime = 0;
  bool _isRunning = false;

  void _startTimer() {
    _timer = Timer.periodic(Duration(milliseconds: 10), (timer) {
      setState(() {
        _elapsedTime += 10;
      });
    });
  }

  void _stopTimer() {
    _timer.cancel();
  }

  void _resetTimer() {
    setState(() {
      _elapsedTime = 0;
      _isRunning = false;
      _stopTimer();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stopwatch'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Elapsed Time: ${(_elapsedTime / 1000).toStringAsFixed(2)} s',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _isRunning ? null : () {
                    setState(() {
                      _isRunning = true;
                    });
                    _startTimer();
                  },
                  child: Text('Start'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _isRunning ? () {
                    setState(() {
                      _isRunning = false;
                    });
                    _stopTimer();
                  } : null,
                  child: Text('Stop'),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: _elapsedTime > 0 ? _resetTimer : null,
                  child: Text('Reset'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
