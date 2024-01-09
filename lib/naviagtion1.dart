import "package:flutter/material.dart";
import "package:flutter_application_1/Add.dart";
import "package:flutter_application_1/complete.dart";
import "package:flutter_application_1/profileScreen.dart";

class naviagation1 extends StatefulWidget {
  const naviagation1({super.key});

  @override
  State<naviagation1> createState() => _naviagation1State();
}

class _naviagation1State extends State<naviagation1> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: Colors.blue,
          selectedIndex: currentPageIndex,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_filled),
              label: 'Home',
            ),
            NavigationDestination(
              icon: Icon(Icons.ac_unit_rounded),
              label: 'complete',
            ),
            NavigationDestination(
              icon: Icon(Icons.perm_identity),
              label: 'Profile',
            ),

            // NavigationDestination(
            //   icon: Icon(Icons.scoreboard_rounded),
            //   label: 'Live Score',
            // ),
            // NavigationDestination(
            //   icon: Icon(Icons.person_rounded),
            //   label: 'Profile',
            // ),
          ],
        ),
        body: [
          Container(
            alignment: Alignment.center,
            child: const add(),
          ),
          Container(
              color: Color.fromARGB(255, 11, 154, 225),
              alignment: Alignment.center,
              child: const complete()),
          Container(
              color: Color.fromARGB(255, 11, 154, 225),
              alignment: Alignment.center,
              child: const profileScreen()),
        ][currentPageIndex]);
  }
}
