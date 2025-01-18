import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_flutter/getx/controller.dart';
import 'package:mastering_flutter/getx/total_attendance.dart';

class SchoolPage extends StatefulWidget {
  const SchoolPage({super.key});

  @override
  State<SchoolPage> createState() => _SchoolPageState();
}

class _SchoolPageState extends State<SchoolPage> {
  final Controller controller = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("School Page"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          automaticallyImplyLeading: false),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 80,
              width: 80,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(14)),
            ),
            Row(
              children: [
                const Icon(Icons.person),
                const SizedBox(
                  width: 10,
                ),
                const Text('Kehadiran Siswa'),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    controller.removeStudentAttendance();
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.black12,
                    ),
                    child: const Icon(Icons.remove),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Obx(() => Text(controller.student.toString())),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    controller.addStudentAttendance();
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.black12,
                    ),
                    child: const Icon(Icons.add),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const Icon(Icons.person),
                const SizedBox(
                  width: 10,
                ),
                const Text('Kehadiran Guru'),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    controller.removeTeacherAttendance();
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.black12,
                    ),
                    child: const Icon(Icons.remove),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Obx(() => Text(controller.teacher.toString())),
                const SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    controller.addTeacherAttendance();
                  },
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.black12,
                    ),
                    child: const Icon(Icons.add),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.to(() => TotalAttendance());
                },
                child: const Text("Total Kehadiran")),
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
