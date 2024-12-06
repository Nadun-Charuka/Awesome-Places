import 'package:awesome_places_v77/pages/models/place.dart';
import 'package:awesome_places_v77/utils/colors.dart';
import 'package:awesome_places_v77/widgets/custom_sized_box.dart';
import 'package:awesome_places_v77/widgets/image_card.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class NightlifePage extends StatelessWidget {
  final List<Place> places = [
    Place(
      title: 'Nightlife Place-1',
      imageUrl: 'assets/night1.png',
      description: 'Discover the beauty...',
      titleColor: orange53Opacity,
    ),
    Place(
      title: 'Nightlife Place-2',
      imageUrl: 'assets/night2.png',
      description: 'Discover the beauty...',
      titleColor: orange53Opacity,
    ),
    Place(
      title: 'Nightlife Place-3',
      imageUrl: 'assets/night3.png',
      description: 'Discover the beauty...',
      titleColor: orange53Opacity,
    ),
    // Add more places
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Nightlife",
          style: TextStyle(
            fontSize: 35,
            color: orange,
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
