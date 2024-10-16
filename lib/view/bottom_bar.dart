import 'package:cool_nav/cool_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gote_jaga_astrology/utils/colors.dart';

import 'home/home_view.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  // State variable to keep track of the current index
  int currentIndex = 0;

  // List of views to navigate to
  final List<Widget> _views = [
    HomeView(), // First tab
    HomeView(),
    HomeView(), // First tab
    HomeView(),
    HomeView(), // First tab
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _views[currentIndex], // Display the current view based on index
      bottomNavigationBar: FlipBoxNavigationBar(

        unselectedItemTheme: IconThemeData(color: Colors.white),
        selectedItemTheme: IconThemeData(color: Colors.white),
        textStyle: TextStyle(
          color: Colors.white
        ),
        currentIndex: currentIndex,
        verticalPadding: 15.0,
        items: <FlipBoxNavigationBarItem>[
          FlipBoxNavigationBarItem(
            name: 'Home',
            selectedIcon: Icons.home, // Icon data only
            unselectedIcon: Icons.home_outlined, // Icon data only
            selectedBackgroundColor: primaryColor,
            unselectedBackgroundColor: lightPrimaryColor,
          ),
          FlipBoxNavigationBarItem(
            name: 'Mail',
            selectedIcon: Icons.call, // Icon data only
            unselectedIcon: Icons.call, // Icon data only
            selectedBackgroundColor: primaryColor,
            unselectedBackgroundColor: lightPrimaryColor,
          ),
          FlipBoxNavigationBarItem(
            name: 'Video',
            selectedIcon: Icons.video_call, // Icon data only
            unselectedIcon: Icons.video_call_outlined, // Icon data only
            selectedBackgroundColor: primaryColor,
            unselectedBackgroundColor: lightPrimaryColor,
          ),
          FlipBoxNavigationBarItem(
            name: 'People',
            selectedIcon: Icons.person, // Icon data only
            unselectedIcon: Icons.person_outline, // Icon data only
            selectedBackgroundColor: primaryColor,
            unselectedBackgroundColor: lightPrimaryColor,
          ),
          FlipBoxNavigationBarItem(
            name: 'Chat',
            selectedIcon: Icons.chat, // Icon data only
            unselectedIcon: Icons.chat_outlined, // Icon data only
            selectedBackgroundColor: primaryColor,
            unselectedBackgroundColor: lightPrimaryColor,
          ),
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index; // Update the current index on tap
          });
        },
      ),
    );
  }
}
