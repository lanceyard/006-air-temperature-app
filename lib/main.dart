import 'package:flutter/material.dart';
// presentation
import 'package:suhu_udara/presentation/home_screen/home_page.dart';

void main() {
  runApp(const SuhuMaterial());
}

class SuhuMaterial extends StatelessWidget {
  const SuhuMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
