import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Second Page'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Nama saya Radit'),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/introduction');
                },
                child: const Text('Lihat perkenalan')),
            const SizedBox(
              height: 10,
            ),
            const Text('Pendidikan'),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/education');
                },
                child: const Text('Lihat Pendidikan')),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Kembali ke halaman pertama')),
          ],
        ),
      ),
    );
  }
}
