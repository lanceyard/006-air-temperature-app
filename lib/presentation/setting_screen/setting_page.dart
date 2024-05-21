import 'package:flutter/material.dart';
import 'package:suhu_udara/presentation/utils/colors.dart';
import 'package:suhu_udara/presentation/utils/custom_widgets.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: justGreen,
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  ExpandedContainer(
                  height: null,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Icon(Icons.person, size: 86,),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Siska Nur Cahyani Imamah",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "siskanurcahyaniimamah@gmail.com",
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
