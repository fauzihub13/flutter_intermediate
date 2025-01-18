import 'package:flutter/material.dart';
import 'package:mastering_flutter/navigation-routing/second_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Navigation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('First Page'),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true).pushNamed('/second');

                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return const SecondPage();
                  }));

                  // Navigator.push(context, MaterialPageRoute(builder: (_) {
                  //   return const SecondPage();
                  // }));
                },
                child: const Text('Next to Second Page'))
          ],
        ),
      ),
    );
  }
}
