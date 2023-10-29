import 'package:flutter/material.dart';
import 'package:forestvpn_test/ui/widgets/shimmered_plug.dart';

class ShimmeredNetworkImage extends StatelessWidget {
  const ShimmeredNetworkImage({
    super.key,
    required this.imageUrl,
    this.circularBorderRadius,
  });

  final String imageUrl;
  final double? circularBorderRadius;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
          circularBorderRadius == null ? BorderRadius.zero : BorderRadius.all(Radius.circular(circularBorderRadius!)),
      child: Image(
        image: NetworkImage(imageUrl),
        fit: BoxFit.fill,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) {
            return child;
          } else {
            return const ShimmeredPlug();
          }
        },
      ),
    );
  }
}
