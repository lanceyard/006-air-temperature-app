import 'package:flutter/material.dart';

class FuzzyPage extends StatefulWidget {
  const FuzzyPage({super.key});

  @override
  State<FuzzyPage> createState() => _FuzzyPageState();
}

class _FuzzyPageState extends State<FuzzyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [Text("Hi")],
        ),
      ),
    );
  }
}
