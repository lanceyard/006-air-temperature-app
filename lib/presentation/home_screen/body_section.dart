import 'package:flutter/material.dart';
import 'package:suhu_udara/presentation/custom_widgets.dart';

class BodySection extends StatelessWidget {
  const BodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                ExpandedContainer(children: [
                  Text("lol"),
                ]),
                SizedBox(
                  width: 10,
                ),
                ExpandedContainer(children: [
                  Text("lol"),
                ]),
              ],
            ),
            Row(
              children: [
                ExpandedContainer(children: [
                  Text("lol"),
                ]),
                SizedBox(
                  width: 10,
                ),
                ExpandedContainer(children: [
                  Text("lol"),
                ]),
              ],
            ),
            Row(
              children: [
                ExpandedContainer(children: [
                  Text("lol"),
                ]),
                SizedBox(
                  width: 10,
                ),
                ExpandedContainer(children: [
                  Text("lol"),
                ]),
              ],
            ),
            Row(
              children: [
                ExpandedContainer(children: [
                  Text("lol"),
                ]),
              ],
            ),
            Row(
              children: [
                ExpandedContainer(children: [
                  Text("lol"),
                ]),
              ],
            ),
          ],
        ));
  }
}
