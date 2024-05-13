import 'package:flutter/material.dart';

class TweenAnimation extends StatefulWidget {
  const TweenAnimation({super.key});

  @override
  State<TweenAnimation> createState() => _TweenAnimationState();
}

class _TweenAnimationState extends State<TweenAnimation>
    with SingleTickerProviderStateMixin {
  late Animation animation;
  late Animation animationColor;

  late AnimationController animationController;
  final _begin = 200.0;
  final _end = 100.0;
  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animation = Tween(begin: _begin, end: _end).animate(animationController);
    animationColor = ColorTween(begin: Colors.blue, end: Colors.orange)
        .animate(animationController);

    animationController.addListener(() {
      setState(() {});
    });
    animationController.repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tween Animation'),
      ),
      body: Center(
        child: Container(
          width: animation.value,
          height: animation.value,
          color: animationColor.value,
        ),
      ),
    );
  }
}
