import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_flutter/getx/dark_mode_page.dart';
import 'package:mastering_flutter/getx/school_page.dart';
import 'package:mastering_flutter/getx/second_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const SecondPage());
                },
                child: const Text("Next Page")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const DarkModePage());
                },
                child: const Text("Dark Mode Page")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => const SchoolPage());
                },
                child: const Text("School Page")),
          ],
        ),
      ),
    );
  }
}
