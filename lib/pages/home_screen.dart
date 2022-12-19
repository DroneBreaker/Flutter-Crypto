import 'package:crypto_me/pages/chat.dart';
import 'package:crypto_me/pages/home.dart';
import 'package:crypto_me/pages/notifications.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0x0000F0FF),
      body: _getPages(),
      bottomNavigationBar: _bottomNavigation(),
    );
  }

  _bottomNavigation() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.notifications), label: 'Notifications'),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chat')
      ],
      type: BottomNavigationBarType.shifting,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey.withOpacity(0.5),
      onTap: (int index) => setState(() {
        currentIndex = index;
      }),
      currentIndex: currentIndex,
      elevation: 0,
    );
  }

  _getPages() {
    switch (currentIndex) {
      case 0:
        return const HomePage();
      case 1:
        return const NotificationPage();
      case 2:
        return const MessagePage();
    }
  }
}
