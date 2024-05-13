import 'package:firstapp/src/present/views/home_screen/hero_animation.dart';
import 'package:firstapp/src/present/views/home_screen/list_3d.dart';
import 'package:firstapp/src/present/views/home_screen/tween_anim.dart';
import 'package:flutter/material.dart';

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
        backgroundColor: const Color.fromARGB(255, 58, 103, 238),
        title: const Text('Flutter Demo'),
        elevation: 2,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AnimatedContainer(
                    duration: const Duration(seconds: 2),
                    width: _width,
                    height: _height,
                    color: bgColor,
                  ),
                  const SizedBox(
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
                    child: const Text('Animatation'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  AnimatedOpacity(
                    opacity: myOpacity,
                    duration: const Duration(seconds: 1),
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
                    child: const Text('Opacity'),
                  ),
                  const SizedBox(
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
                    duration: const Duration(seconds: 2),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      reload();
                    },
                    child: const Text('Cross-Fade'),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  const Text(
                    'Hero Animation',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HeroAnimationScreen(),
                        ),
                      );
                    },
                    child: Hero(
                      tag: 'background',
                      child: Image.asset(
                        'assets/images/bg_hero.jpeg',
                        width: 180,
                        height: 100,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ListAnimation3D(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text('ListWheel  '),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TweenAnimation(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.arrow_forward),
                    label: const Text('Tween'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
