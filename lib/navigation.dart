import "package:flutter/material.dart";
import "package:flutter_application_1/home.dart";
import "package:flutter_application_1/option.dart";
import "package:flutter_application_1/profileScreen.dart";

class navigation extends StatefulWidget {
  const navigation({super.key});

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
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
              icon: Icon(Icons.add_box),
              label: 'add',
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
            color: const Color.fromARGB(255, 76, 153, 175),
            alignment: Alignment.center,
            child: const Home(),
          ),
          Container(
            color: const Color.fromARGB(255, 76, 153, 175),
            alignment: Alignment.center,
            child: const option(),
          ),
          Container(
              color: const Color.fromARGB(255, 76, 153, 175),
              alignment: Alignment.center,
              child: const profileScreen()),
        ][currentPageIndex]);
  }
}
