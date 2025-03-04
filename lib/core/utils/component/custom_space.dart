import 'package:flutter/material.dart';

class CustomSpaceWidth extends StatelessWidget {
  const CustomSpaceWidth({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * width,
    );
  }
}

class CustomSpaceHeight extends StatelessWidget {
  const CustomSpaceHeight({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * height,
    );
  }
}
