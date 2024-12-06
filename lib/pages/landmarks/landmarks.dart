import 'package:awesome_places_v77/pages/models/place.dart';
import 'package:awesome_places_v77/utils/colors.dart';
import 'package:awesome_places_v77/widgets/custom_sized_box.dart';
import 'package:awesome_places_v77/widgets/image_card.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class LandmarksPage extends StatelessWidget {
  final List<Place> places = [
    Place(
      title: 'Landmarks Place-1',
      imageUrl: 'assets/land1.png',
      description: 'Discover the beauty...',
      titleColor: blue53Opacity,
    ),
    Place(
      title: 'Landmarks Place-2',
      imageUrl: 'assets/land2.png',
      description: 'Discover the beauty...',
      titleColor: blue53Opacity,
    ),
    Place(
      title: 'Landmarks Place-3',
      imageUrl: 'assets/land3.png',
      description: 'Discover the beauty...',
      titleColor: blue53Opacity,
    ),

    // Add more places
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Landmarks",
          style: TextStyle(
            fontSize: 35,
            color: blue,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: places.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ImageCard(
                  place: places[index],
                ),
                const CustomSizedBox2()
              ],
            );
          },
        ),
      ),
    );
  }
}
