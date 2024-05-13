
import 'package:flutter/material.dart';

class HeroAnimationScreen extends StatelessWidget {
  const HeroAnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Hero Animation'),
      ),
      body: Hero(
        tag: 'background',
        child: Image.asset(
          'assets/images/bg_hero.jpeg',
        ),
      ),
    );
  }
}
