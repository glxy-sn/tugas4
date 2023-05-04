import 'dart:async';
import 'package:flutter/material.dart';

class StopwatchPage extends StatefulWidget {
  @override
  _StopwatchPageState createState() => _StopwatchPageState();
}

class _StopwatchPageState extends State<StopwatchPage> {
  // declare the variables
  Stopwatch _stopwatch = Stopwatch();
  late Timer _timer; // null safety
  Duration _elapsedTime = Duration.zero;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(milliseconds: 60), _onTimerTick);
  }

  void _onTimerTick(Timer timer) {
    if (_stopwatch.isRunning) {
      setState(() {
        _elapsedTime = _stopwatch.elapsed;
      });
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startTimer() {
    setState(() {
      _stopwatch.start();
    });
  }

  void _stopTimer() {
    setState(() {
      _stopwatch.stop();
    });
  }

  void _resetTimer() {
    setState(() {
      _stopwatch.reset();
      _elapsedTime = Duration.zero;
    });
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
              '${_elapsedTime.inMinutes}:${(_elapsedTime.inSeconds % 60).toString().padLeft(2, '0')}.${(_elapsedTime.inMilliseconds % 1000 ~/ 10).toString().padLeft(2, '0')}',
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 28.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ElevatedButton(
                    onPressed: _startTimer,
                    child: Text('Start'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ElevatedButton(
                    onPressed: _stopTimer,
                    child: Text('Stop'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ElevatedButton(
                    onPressed: _resetTimer,
                    child: Text('Reset'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
