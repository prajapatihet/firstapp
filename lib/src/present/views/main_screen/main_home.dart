import 'package:flutter/material.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Flutter Demo'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Buttons',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
              onPressed: () {
                print('Clicked ');
              },
              child: Text('Text Button'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Clicked');
              },
              child: Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {
                print('Clicked');
              },
              child: Text('Outlined Button'),
            ),
          ],
        ),
      ),
    );
  }
}
