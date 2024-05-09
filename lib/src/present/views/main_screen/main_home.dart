import 'package:flutter/material.dart';

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
          backgroundColor: Colors.blue,
          title: const Text('Flutter Demo'),
          elevation: 2,
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Container(
              color: arrColors[index],
            );
          },
          itemCount: arrColors.length,
        ));
  }
}
