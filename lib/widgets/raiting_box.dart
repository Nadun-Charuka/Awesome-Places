import 'package:awesome_places_v77/widgets/rating_star.dart';
import 'package:flutter/material.dart';

class RaitingBox extends StatelessWidget {
  const RaitingBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color(0xffCACACA).withOpacity(.31),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          RatingStar(),
          RatingStar(),
          RatingStar(),
          RatingStar(),
          RatingStar(
            color: Colors.black54,
          ),
        ],
      ),
    );
  }
}
