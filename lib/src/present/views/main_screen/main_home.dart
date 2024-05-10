import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  var arrColors = [
    Colors.red,
    Colors.blue,
    Colors.grey,
    Colors.red,
    Colors.blueGrey,
    Colors.green,
    Colors.yellow,
    Colors.lightBlue,
    Colors.redAccent,
    Colors.deepOrange,
    Colors.amber
  ];
  // var time = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 145, 243, 33),
        title: const Text('Flutter Demo'),
        elevation: 2,
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.blue,
                child: ListView.builder(
                  itemBuilder: (context, index) => const Padding(
                    padding: EdgeInsets.all(11.0),
                    child: SizedBox(
                      width: 100,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                color: Colors.orange,
                child: ListView.builder(
                  itemBuilder: (context, index) => ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                    ),
                    title: Text('Name'),
                    subtitle: Text('Number'),
                    trailing: Icon(Icons.delete),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey,
                child: ListView.builder(
                  itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.all(10),
                    child: Container(
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue),
                    ),
                  ),
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ),
            Expanded(flex: 2, child: Container(color: Colors.green)),
          ],
        ),
      ),
    );
  }
}
