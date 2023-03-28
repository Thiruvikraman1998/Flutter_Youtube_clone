import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube_clone_app/screens/onboarding.dart';

class BottomBarView extends StatefulWidget {
  const BottomBarView({super.key});

  @override
  State<BottomBarView> createState() => _BottomBarViewState();
}

class _BottomBarViewState extends State<BottomBarView> {
  int currentIndex = 0;
  List<Widget> screens = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnBoardingScreen(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(
                FluentSystemIcons.ic_fluent_home_filled,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_video_clip_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_clipboard_filled),
              label: "Shorts"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_video_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_video_filled),
              label: "Subscriptions"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_library_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_library_filled),
              label: "Library"),
        ],
      ),
    );
  }
}
