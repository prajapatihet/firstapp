import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                'ScrollView',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 200,
                      height: 200,
                      color: Colors.blue,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 200,
                      height: 200,
                      color: Colors.orange,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 200,
                      height: 200,
                      color: Colors.red,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 200,
                      height: 200,
                      color: Colors.green,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 200,
                      height: 200,
                      color: Colors.grey,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 200,
                      height: 200,
                      color: Colors.blue,
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 200,
                      height: 200,
                      color: Colors.orange,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                color: Colors.redAccent,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                color: Colors.orange,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                color: Colors.grey,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                color: Colors.blue,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                color: Colors.orange,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                color: Colors.red,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                color: Colors.green,
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                height: 200,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
