import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suhu_udara/logic/provider/firebase_provider.dart';
import 'package:suhu_udara/presentation/utils/custom_widgets.dart';

class BodySection extends StatelessWidget {
  const BodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child:
            Consumer<FirebaseDataProvider>(builder: (context, provider, child) {
          final data = provider.firebaseData;
          if (data == null) {
            return const Center(
              child: LinearProgressIndicator(
                color: Colors.green,
              ),
            );
          }
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  ExpandedContainer(children: [
                    const Icon(Icons.thermostat_outlined),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("${data.airTemperature}°"),
                          const Text(
                            "Air Temperature",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  const SizedBox(
                    width: 10,
                  ),
                  ExpandedContainer(children: [
                    const Icon(Icons.water_damage),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(data.airHumidity.toString()),
                        const Text(
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
                    const Icon(Icons.water_drop_rounded),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(data.isRaining ? "Yes" : "No"),
                        const Text(
                          "Is Raining",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ]),
                  const SizedBox(
                    width: 10,
                  ),
                  ExpandedContainer(children: [
                    const Icon(Icons.light_mode_outlined),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(data.lightIntensity.toString()),
                        const Text(
                          "Light Intensity",
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
                    const Icon(Icons.account_tree_outlined),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(data.soilMoisture),
                        const Text(
                          "Soil Moisture",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ]),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              Row(
                children: [
                  ExpandedContainer(children: [
                    const Icon(Icons.roofing),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(data.roofMoverStatus ? "Open" : "Closed"),
                        const Text(
                          "Roof Mover Status",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ]),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              SwitchListTile(
                title: const Text('Roof Mover State'),
                value: data.roofMoverStatus,
                onChanged: (value) {
                  provider.updateRoofMoverStatus(value);
                },
              ),
            ],
          );
        }));
  }
}
