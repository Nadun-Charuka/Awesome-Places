import 'package:flutter/material.dart';

class VehicleCardBox extends StatelessWidget {
  final String imgUrl;
  final String vehicleName;
  const VehicleCardBox(
      {super.key, required this.imgUrl, required this.vehicleName});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.asset(
            imgUrl,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          Text(vehicleName),
        ],
      ),
    );
  }
}
