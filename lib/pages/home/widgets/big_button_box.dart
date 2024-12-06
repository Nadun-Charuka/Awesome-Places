import 'package:awesome_places_v77/pages/bookingpage/booking_page.dart';
import 'package:awesome_places_v77/utils/colors.dart';
import 'package:flutter/material.dart';

class BigButtonBox extends StatelessWidget {
  const BigButtonBox({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const BookingPage(),
          ),
        );
      },
      child: Center(
        child: Container(
          width: 330,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(
              width: 3,
              color: purple,
            ),
            borderRadius: BorderRadius.circular(50),
            color: const Color(0xff000000).withOpacity(.04),
          ),
          child: const Center(
            child: Text(
              "Book For A Ride Today !",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
