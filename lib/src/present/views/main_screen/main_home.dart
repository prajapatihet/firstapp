import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  RangeValues value = RangeValues(0, 100);

  // var time = DateTime.now();

  var _width = 200.0;
  var _height = 200.0;
  bool flag = true;
  Color bgColor = Colors.orange;

  @override
  Widget build(BuildContext context) {
    RangeLabels label =
        RangeLabels(value.start.toString(), value.end.toString());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 58, 103, 238),
        title: const Text('Flutter Demo'),
        elevation: 2,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              width: _width,
              height: _height,
              color: bgColor,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (flag) {
                      _width = 300.0;
                      _height = 300.0;
                      flag = false;
                      bgColor = Colors.redAccent;
                    } else {
                      _width = 200.0;
                      _height = 200.0;
                      flag = true;
                      bgColor = Colors.orange;
                    }
                  });
                },
                child: Text('Animatation'))
          ],
        ),
      ),
    );
  }
}
