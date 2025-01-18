import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_flutter/getx/controller.dart';

class TotalAttendance extends StatelessWidget {
  TotalAttendance({super.key});
  final Controller controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("School Page"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          automaticallyImplyLeading: false),
      body: Center(
        child: Column(
          children: [
            Text(
                "Total Kehadiran Siswa dan Guru: ${controller.sumTotal().toString()}"),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text("Previous Page")),
          ],
        ),
      ),
    );
  }
}
