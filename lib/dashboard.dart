import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tiktok_ui/value.dart';

import 'app_color.dart';
import 'home.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final List<Widget> _widgetOptions = [
    const Home(),
    const Home(),
    const Home(),
    const Home(),
    const Home(),
    // const Account()
  ];

  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBackground,
      body: Center(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: Obx(() {
        return Visibility(
          visible: bottomVisible.value,
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.feed, size: 30),
                label: 'Apps',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 29),
                label: 'Qucon',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 29),
                label: 'Zaady',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 29),
                label: 'Organize',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 29),
                label: 'Profile',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            backgroundColor: secondaryBackground,
            currentIndex: selectedIndex,
            // selectedIconTheme:
            // const IconThemeData(color: primaryColor, opacity: 1),
            // unselectedIconTheme:
            // IconThemeData(color: textSecondary, opacity: 1),
            selectedItemColor: primaryColor,
            unselectedItemColor: textSecondary,
            selectedLabelStyle:
                const TextStyle(fontSize: fontSmall, color: primaryColor),
            unselectedLabelStyle:
                const TextStyle(fontSize: fontSmall, color: primaryColor),
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
          ),
        );
      }),
    );
  }
}
