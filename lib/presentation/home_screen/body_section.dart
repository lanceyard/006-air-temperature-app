import 'package:flutter/material.dart';
import 'package:suhu_udara/presentation/utils/custom_widgets.dart';

class BodySection extends StatelessWidget {
  const BodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                ExpandedContainer(children: [
                  Icon(Icons.thermostat_outlined),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("data"),
                        Text(
                          "Air Temperature",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ]),
                SizedBox(
                  width: 10,
                ),
                ExpandedContainer(children: [
                  Icon(Icons.water_damage),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("data"),
                      Text(
                        "Air Humidity",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ]),
              ],
            ),
            Row(
              children: [
                ExpandedContainer(children: [
                  Icon(Icons.water_drop_rounded),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("data"),
                      Text(
                        "pH Levels",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ]),
                SizedBox(
                  width: 10,
                ),
                ExpandedContainer(children: [
                  Icon(Icons.light_mode_outlined),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("data"),
                      Text(
                        "Lighting",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ]),
              ],
            ),
            Row(
              children: [
                ExpandedContainer(children: [
                  Icon(Icons.account_tree_outlined),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("data"),
                      Text(
                        "Soil Moisture",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ]),
                SizedBox(
                  width: 10,
                ),
                ExpandedContainer(children: [
                  Icon(Icons.water_outlined),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("data"),
                      Text(
                        "Water Reservoir",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ]),
              ],
            ),
            Row(
              children: [
                ExpandedContainer(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Text("Roof Mower"),
                          ],
                        ),
                      ),
                      Text("Enabled")
                    ]),
              ],
            ),
            Row(
              children: [
                ExpandedContainer(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Text("Watering"),
                          ],
                        ),
                      ),
                      Text("Enabled")
                    ]),
              ],
            ),
          ],
        ));
  }
}
