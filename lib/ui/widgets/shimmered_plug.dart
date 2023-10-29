import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmeredPlug extends StatelessWidget {
  const ShimmeredPlug({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade500,
      child: ColoredBox(
        color: Colors.grey.shade300,
      ),
    );
  }
}
