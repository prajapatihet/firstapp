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
      body: Center(
        child: Column(
          children: [
            const Text(
              'Select Date',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                DateTime? pickdate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2025),
                );

                if (pickdate != null) {
                  print(pickdate);
                }
              },
              child: const Text('Pick Date'),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Select Time',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                TimeOfDay? picktime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.dial,
                );

                if (picktime != null) {
                  print(picktime);
                }
              },
              child: const Text('Pick Time'),
            ),
          ],
        ),
      ),
    );
  }
}
