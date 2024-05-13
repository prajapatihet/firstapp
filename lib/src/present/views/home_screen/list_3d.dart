import 'package:flutter/material.dart';

class ListAnimation3D extends StatefulWidget {
  const ListAnimation3D({super.key});

  @override
  State<ListAnimation3D> createState() => _ListAnimation3DState();
}

class _ListAnimation3DState extends State<ListAnimation3D> {
  final arrColors = [1, 2, 3, 4, 5, 6, 7, 8, 9];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListWheelScrollView'),
      ),
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 200,
          children: arrColors
              .map(
                (value) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(21),
                    ),
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        '$value',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
