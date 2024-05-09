import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  var time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Flutter Demo'),
        elevation: 2,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Current Time -> ${DateFormat('jms').format(time)}\nCurrent Time -> ${DateFormat('Hms').format(time)}\nCurrent Date -> ${DateFormat('yMMMMd').format(time)}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  time = DateTime.now();
                });
              },
              child: const Text('Current Time'),
            ),
          ],
        ),
      ),
    );
  }
}
