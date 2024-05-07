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
              'Column Aligns',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              color: Colors.green[100],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text(
                      'Buttons',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
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
                    Text(
                      'Images',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: InkWell(
                        onTap: () {
                          print('image clicked');
                        },
                        child: Image.asset('assets/images/flutter.png'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Row Aligns',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              color: Colors.green[100],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      'assets/images/python.png',
                      height: 70,
                    ),
                    Image.asset(
                      'assets/images/java.png',
                      height: 70,
                    ),
                    Image.asset(
                      'assets/images/swift.png',
                      height: 70,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
