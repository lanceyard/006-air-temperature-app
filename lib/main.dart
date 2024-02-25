import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // presentation
import 'package:suhu_udara/presentation/home_screen/home_page.dart';

void main() {
  // main will always not be reloaded
  runApp(const SuhuMaterial());
}

class SuhuMaterial extends StatelessWidget {
  const SuhuMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    // preferensi system color
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.grey[50],
      // navigation bar color
      systemNavigationBarIconBrightness: Brightness.light,
      //navigation bar icon

      statusBarIconBrightness: Brightness.light,
      // statusBarColor: Color(0xFF86E779)
    ));

    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
