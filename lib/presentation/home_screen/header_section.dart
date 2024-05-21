import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suhu_udara/logic/provider/firebase_provider.dart';

class HeaderSection extends StatefulWidget {
  const HeaderSection({super.key});

  @override
  State<HeaderSection> createState() => _HeaderSectionState();
}

class _HeaderSectionState extends State<HeaderSection> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextStyle textWhite = const TextStyle(
      color: Colors.white,
    );
    return SizedBox(
      height: size.height * 0.40 - 70,
      child: Stack(
        children: [
          // green thingy container
          Container(
            height: size.height * 0.40 - 80,
            width: double.infinity,
            decoration: const BoxDecoration(
                color: Color(0xFF86E779),
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(10))),
            // body of its green thingy, (( it's stacked ))
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.05,
                ),
                const Text(
                  "Hello Farmer, Good Morning!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),

                // body of the after search field, greeny thing background white
                // container
                // Container(
                //   margin:
                //       const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                //   child: TextField(
                //     onEditingComplete: () {
                //       FocusManager.instance.primaryFocus?.unfocus();
                //     },
                //     controller: null,
                //     decoration: InputDecoration(
                //         contentPadding: const EdgeInsets.symmetric(
                //             horizontal: 20.0, vertical: 10.0),
                //         focusedBorder: OutlineInputBorder(
                //             borderSide:
                //                 const BorderSide(color: Colors.black, width: 2),
                //             borderRadius: BorderRadius.circular(16)),
                //         enabledBorder: OutlineInputBorder(
                //             borderSide: const BorderSide(
                //                 color: Colors.black12, width: 1),
                //             borderRadius: BorderRadius.circular(30)),
                //         prefixIcon: IconButton(
                //           icon: const Icon(Icons.search),
                //           color: Colors.lightGreen,
                //           onPressed: () {
                //             // search disini
                //           },
                //         ),
                //         fillColor: Colors.white,
                //         filled: true),
                //   ),
                // ),

                Container(
                  width: double.infinity,
                  height: size.height * 0.17,
                  decoration: const BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // first column
                      Consumer<FirebaseDataProvider>(
                          builder: (context, provider, child) {
                        if (provider.error) {
                          return const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.error),
                              Text("Failed"),
                            ],
                          );
                        }
                        return const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.connected_tv),
                            Text("Connected"),
                          ],
                        );
                      }),
                      const SizedBox(
                        width: 30,
                      ),

                      // second column
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Location"),
                          const Text("Jember"),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          const Text("Type"),
                          const Text("Skillion"),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Plants"),
                          const Text("Tomatoes"),
                          SizedBox(
                            height: size.height * 0.02,
                          ),
                          const Text("Size"),
                          const Text("4 x 5 cm"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
