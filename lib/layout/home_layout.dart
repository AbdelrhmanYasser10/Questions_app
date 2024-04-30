import 'package:flutter/material.dart';
import 'package:questionaire_app/screens/home_screen.dart';
import 'package:questionaire_app/screens/profile_screen.dart';

import '../shared/colors/app_colors.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  List<Widget> screens = const [
    HomeScreen(),
    ProfileScreen(),
  ];
  int currentIdx = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIdx,
          onTap: (value) {
            setState(() {
              currentIdx = value;
            });
          },
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.blueGrey,
          selectedItemColor: AppColors.appBarColor,
          items:const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
              ),
              label: "Home"
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
              ),
              label: "Profile"
            ),
          ],
          type: BottomNavigationBarType.fixed,
        ),
      body: screens[currentIdx],
    );
  }
}
