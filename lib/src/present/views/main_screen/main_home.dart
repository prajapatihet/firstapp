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
  // var time = DateTime.now();

  var _width = 200.0;
  var _height = 200.0;
  bool flag = true;
  Color bgColor = Colors.orange;

  var myOpacity = 1.0;
  bool opflag = true;

  bool isFirst = true;

  void reload() {
    setState(() {
      if (isFirst) {
        isFirst = false;
      } else {
        isFirst = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 58, 103, 238),
        title: const Text('Flutter Demo'),
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: Duration(seconds: 2),
                  width: _width,
                  height: _height,
                  color: bgColor,
                ),
                SizedBox(
                  height: 5,
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
                  child: Text('Animatation'),
                ),
                const SizedBox(
                  height: 10,
                ),
                AnimatedOpacity(
                  opacity: myOpacity,
                  duration: Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  child: Container(
                    width: 200,
                    height: 200,
                    color: Colors.amber,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (opflag) {
                        myOpacity = 0.0;
                        opflag = false;
                      } else {
                        myOpacity = 1.0;
                        opflag = true;
                      }
                    });
                  },
                  child: Text('Opacity'),
                ),
                SizedBox(
                  height: 10,
                ),
                AnimatedCrossFade(
                  firstChild: Image.asset(
                    'assets/images/card-close.png',
                    width: 300,
                    height: 300,
                  ),
                  secondChild: Image.asset(
                    'assets/images/card-open.png',
                    width: 300,
                    height: 300,
                  ),
                  crossFadeState: isFirst
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: Duration(seconds: 2),
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    reload();
                  },
                  child: Text('Cross-Fade'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
