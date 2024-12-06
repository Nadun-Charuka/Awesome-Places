import 'package:awesome_places_v77/utils/colors.dart';
import 'package:flutter/material.dart';

class TeamsizeBox extends StatelessWidget {
  const TeamsizeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: gray23Opacity,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Text(
              "3",
              style: TextStyle(
                fontSize: 34,
                color: gray53Opacity,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Text(
              "Add or Remove team members",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Center(
                      child: Icon(Icons.add),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Center(
                      child: Icon(Icons.remove),
                    ),
                  ),
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}
