import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DarkModePage extends StatefulWidget {
  const DarkModePage({super.key});
  @override
  State<DarkModePage> createState() => _DarkModePageState();
}

class _DarkModePageState extends State<DarkModePage> {
  String mode = "light";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dark Mode"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          children: [
            ListTile(
              leading: Radio<String>(
                value: "dark",
                groupValue: mode,
                onChanged: (value) {
                  setState(() {
                    mode = value!;
                    Get.changeTheme(ThemeData.dark());
                  });
                },
              ),
              title: const Text('Dark Mode'),
            ),
            ListTile(
              leading: Radio<String>(
                value: "light",
                groupValue: mode,
                onChanged: (value) {
                  setState(() {
                    mode = value!;
                    Get.changeTheme(ThemeData.light());
                  });
                },
              ),
              title: const Text('Light Mode'),
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Previous Page"))
          ],
        ),
      ),
    );
  }
}
