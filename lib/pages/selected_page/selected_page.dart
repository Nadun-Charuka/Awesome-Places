import 'package:awesome_places_v77/pages/models/place.dart';
import 'package:awesome_places_v77/utils/colors.dart';
import 'package:awesome_places_v77/widgets/custom_sized_box.dart';
import 'package:awesome_places_v77/widgets/raiting_box.dart';
import 'package:flutter/material.dart';

class SelectedPage extends StatelessWidget {
  final Place place;

  const SelectedPage({super.key, required this.place});

  @override
  Widget build(BuildContext context) {
    Color pageColor = const Color(0xff000000);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          (place.title),
          style: TextStyle(
            fontSize: 35,
            // color: place.titleColor,
            color: pageColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  place.description,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const CustomSizedBox1(),
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  place.imageUrl,
                ),
              ),
              const CustomSizedBox1(),
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler",
                style: TextStyle(
                  fontSize: 15,
                  color: textColor,
                ),
                textAlign: TextAlign.center,
              ),
              const CustomSizedBox2(),
              const Text(
                "Rate this place",
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const RaitingBox(),
              const CustomSizedBox2(),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Send Feedback",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 150,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your comment",
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.w300,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    suffixIcon: const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const CustomSizedBox1(),
            ],
          ),
        ),
      ),
    );
  }
}
