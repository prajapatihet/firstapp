import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefScreen extends StatefulWidget {
  const SharedPrefScreen({super.key});

  @override
  State<SharedPrefScreen> createState() => _SharedPrefScreenState();
}

class _SharedPrefScreenState extends State<SharedPrefScreen> {
  var nameController = TextEditingController();
  static const String KEYNAME = 'name';

  var nameValue = 'No Value Saved';

  @override
  void initState() {
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shared-Preference'),
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: nameController,
                style: const TextStyle(
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                    label: const Text('Name'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () async {
                  var name = nameController.text.toString();

                  var prefs = await SharedPreferences.getInstance();

                  prefs.setString(KEYNAME, name);
                },
                child: const Text(
                  'Save',
                  style: TextStyle(
                    fontSize: 21,
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                nameValue,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void getValue() async {
    var prefs = await SharedPreferences.getInstance();

    var getName = prefs.getString(KEYNAME);

    setState(() {
      nameValue = getName ?? 'No Name';
    });
  }
}
