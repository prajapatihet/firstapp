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
              height: 10,
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
            SizedBox(
              height: 15,
            ),
            Text(
              'Images',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Image.asset('assets/images/flutter.png'),
            ),
          ],
        ),
      ),
    );
  }
}
