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
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Colors.orange.shade200, Colors.brown.shade200],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'RangeSlider',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Center(
                child: RangeSlider(
                    values: value,
                    labels: label,
                    divisions: 10,
                    activeColor: Colors.green,
                    inactiveColor: Colors.grey[200],
                    min: 0,
                    max: 100,
                    onChanged: (newValue) {
                      setState(() {
                        value = newValue;
                      });
                    }),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.elliptical(30, 70)),
                  child: Container(
                    height: 150,
                    color: Colors.blueAccent,
                    child: Image.asset('assets/images/flutter.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50)),
                  child: Container(
                    height: 150,
                    color: Colors.blueAccent,
                    child: Image.asset('assets/images/flutter.png'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
