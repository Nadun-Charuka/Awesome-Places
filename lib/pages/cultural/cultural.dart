import 'package:awesome_places_v77/pages/models/place.dart';
import 'package:awesome_places_v77/utils/colors.dart';
import 'package:awesome_places_v77/widgets/custom_sized_box.dart';
import 'package:awesome_places_v77/widgets/image_card.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class CulturalPage extends StatelessWidget {
  final List<Place> places = [
    Place(
      title: 'Cultural Place-1',
      imageUrl: 'assets/cultural1.png',
      description: 'Discover the beauty...',
      titleColor: red53Opacity,
    ),
    Place(
      title: 'Cultural Place-2',
      imageUrl: 'assets/cultural2.png',
      description: 'Discover the beauty...',
      titleColor: red53Opacity,
    ),
    Place(
      title: 'Cultural Place-3',
      imageUrl: 'assets/cultural3.png',
      description: 'Discover the beauty...',
      titleColor: red53Opacity,
    ),
    // Add more places
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cultural",
          style: TextStyle(
            fontSize: 35,
            color: red,
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
