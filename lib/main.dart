import 'package:crypto_me/pages/home.dart';
import 'package:crypto_me/pages/home_screen.dart';
import 'package:crypto_me/pages/notifications.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: '/home', page: () => const HomePage()),
        GetPage(name: '/notifications', page: () => const NotificationPage()),
      ],
      initialRoute: '/',
      defaultTransition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 800),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.amber,
          scaffoldBackgroundColor: const Color(0x00000000)),
      home: const Scaffold(
        // backgroundColor: Color(0x0000F0FF),
        body: HomeScreen(),
      ),
    );
  }
}
