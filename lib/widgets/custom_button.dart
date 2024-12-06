import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.yellow,
        ),
        child: const Text(
          "submit",
          style: TextStyle(
            fontSize: 25,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }
}
