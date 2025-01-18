import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mastering_flutter/getx/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomePage(),
      // initialRoute: '/',
      // routes: {
      // ROUTING AND NAVIGATION
      // '/': (context) => const FirstPage(),
      // '/second': (context) => const SecondPage(),
      // '/introduction': (context) => const IntroductionPage(),
      // '/education': (context) => const EducationPage(),

      // },
    );
  }
}
