import 'package:awesome_places_v77/pages/models/place.dart';
import 'package:awesome_places_v77/pages/selected_page/selected_page.dart';
import 'package:awesome_places_v77/utils/colors.dart';
import 'package:awesome_places_v77/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final Place place;

  const ImageCard({
    super.key,
    required this.place,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SelectedPage(
              place: place,
            ),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                place.title,
                style: TextStyle(
                  fontSize: 24,
                  color: place.titleColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const CustomSizedBox1(),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  place.imageUrl,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const CustomSizedBox1(),
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                  fontSize: 15,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
