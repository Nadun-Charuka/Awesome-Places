import 'package:awesome_places_v77/utils/colors.dart';
import 'package:flutter/material.dart';

class UserdataBox extends StatelessWidget {
  final String title;
  final String hint;
  const UserdataBox({
    super.key,
    required this.title,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            color: gray,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 50,
          child: TextField(
            decoration: InputDecoration(
              labelText: hint,
              hintStyle: const TextStyle(
                fontWeight: FontWeight.w300,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
