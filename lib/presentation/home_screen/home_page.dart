import 'package:flutter/material.dart';
import 'package:suhu_udara/presentation/home_screen/header_section.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // header
            HeaderSection(),

            // body
            Text("Here's the body")
          ],
        ),
      ),
    );
  }
}
