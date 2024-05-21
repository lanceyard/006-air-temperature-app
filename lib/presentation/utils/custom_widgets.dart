// TODO: For Repeated Widget

import 'package:flutter/material.dart';

class ExpandedContainer extends StatefulWidget {
  const ExpandedContainer(
      {super.key, required this.children, this.color, this.padding, this.height});

  final List<Widget> children;
  final Color? color;
  final EdgeInsets? padding;
  final double? height;

  @override
  State<ExpandedContainer> createState() => _ExpandedContainerState();
}

class _ExpandedContainerState extends State<ExpandedContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: widget.padding ?? const EdgeInsets.symmetric(horizontal: 8),
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: widget.height ?? null,
        decoration: BoxDecoration(
          color: widget.color ?? Colors.green[50],
          borderRadius: const BorderRadius.all(Radius.circular(5)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: widget.children,
        ),
      ),
    );
  }
}
