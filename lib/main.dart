import 'package:flutter/material.dart';
import 'package:mastering_flutter/navigation-routing/education_page.dart';
import 'package:mastering_flutter/navigation-routing/first_page.dart';
import 'package:mastering_flutter/navigation-routing/introduction_page.dart';
import 'package:mastering_flutter/navigation-routing/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      // home: const FirstPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstPage(),
        '/second': (context) => const SecondPage(),
        '/introduction': (context) => const IntroductionPage(),
        '/education': (context) => const EducationPage(),
      },
    );
  }
}
