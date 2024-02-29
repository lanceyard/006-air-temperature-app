import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:suhu_udara/logic/provider/controller_provider.dart';
import 'package:suhu_udara/presentation/home_screen/home_page.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ControllerProvider()),
      ],
      child: const MaterialApp(
        home: Home(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
