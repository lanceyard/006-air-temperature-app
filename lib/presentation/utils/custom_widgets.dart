// TODO: For Repeated Widget

import 'package:flutter/material.dart';

class ExpandedContainer extends StatefulWidget {
  const ExpandedContainer(
      {super.key, required this.children, this.color, this.padding});

  final List<Widget> children;
  final Color? color;
  final EdgeInsets? padding;

  @override
  State<ExpandedContainer> createState() => _ExpandedContainerState();
}

class _ExpandedContainerState extends State<ExpandedContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: widget.padding,
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 80.0,
        // Set your desired height
        decoration: BoxDecoration(
          color: widget.color != null ? widget.color : Colors.green[50],
          // Set your desired color
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.children,
        ),
      ),
    );
  }
}
