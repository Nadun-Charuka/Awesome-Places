import 'package:flutter/material.dart';

class RatingStar extends StatelessWidget {
  final Color color;
  const RatingStar({
    super.key,
    this.color = Colors.yellow,
  });

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: color,
      size: 35,
    );
  }
}
