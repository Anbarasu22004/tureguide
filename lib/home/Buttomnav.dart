import 'package:flutter/material.dart';
import 'package:flutterproject/home/Userprofilepage/businessprofile.dart';
import 'package:flutterproject/home/Features/featurespage.dart';
import 'package:flutterproject/home/Userprofilepage/profile.dart';
import 'package:flutterproject/home/category.dart';
import 'package:flutterproject/home/category/architecture/architecture.dart';
import 'package:flutterproject/home/home1.dart';
import 'package:google_fonts/google_fonts.dart';


class bot extends StatefulWidget {
  const bot({super.key});

  @override
  State<bot> createState() => _botState();
}

class _botState extends State<bot> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Home_screen(),
    category(),
    featurespage(),
    UserProfile()

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(Icons.featured_play_list_outlined), label: "Features"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: "Account"),
        ],
      ),
    );
  }
}
