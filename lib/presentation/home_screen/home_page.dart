import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suhu_udara/presentation/fuzzy_screen/fuzzy_page.dart';
import 'package:suhu_udara/presentation/home_screen/body_section.dart';
import 'package:suhu_udara/presentation/home_screen/header_section.dart';
import 'package:suhu_udara/presentation/setting_screen/setting_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: <Widget>[
        // Here's the body
        // Separate it to each page again
        const SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // header
              HeaderSection(),
              BodySection()
            ],
          ),
        ),
        const SettingPage()
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: const Color(0xFF86E779),
        backgroundColor: const Color(0xfff6fff8),
        selectedIndex: currentPageIndex,
        surfaceTintColor: Colors.transparent,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
