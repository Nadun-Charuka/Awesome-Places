import 'package:awesome_places_v77/pages/cultural/cultural.dart';
import 'package:awesome_places_v77/pages/landmarks/landmarks.dart';
import 'package:awesome_places_v77/pages/nightlife/nightlife.dart';
import 'package:awesome_places_v77/pages/home/widgets/big_button_box.dart';
import 'package:awesome_places_v77/pages/home/widgets/category_box.dart';
import 'package:awesome_places_v77/pages/naturalwonders/naturl_wonders.dart';
import 'package:awesome_places_v77/utils/colors.dart';
import 'package:awesome_places_v77/widgets/custom_sized_box.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Awesome",
                          style: TextStyle(
                            fontSize: 25,
                            color: textColor,
                          ),
                        ),
                        Text(
                          "Places",
                          style: TextStyle(
                            fontSize: 55,
                            color: purple,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: purple,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    )
                  ],
                ),
                const CustomSizedBox1(),
                Text(
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility of scenic landscapes, the allure of historical landmarks, or the excitement of vibrant cities, our curated collection of places to visit offers something for every traveler.",
                  style: TextStyle(
                    fontSize: 15,
                    color: textColor,
                  ),
                ),
                const CustomSizedBox1(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(
                    "assets/main.png",
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const CustomSizedBox1(),
                Text(
                  "Select a Place from the categories",
                  style: TextStyle(
                    fontSize: 24,
                    color: purple,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const CustomSizedBox1(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NaturlWondersPage(),
                          ),
                        );
                      },
                      child: CategoryBox(
                        bgColor: green23Opacity,
                        title: 'Natural Wonders',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NightlifePage()),
                        );
                      },
                      child: CategoryBox(
                        bgColor: orange23Opacity,
                        title: 'Nightlife',
                      ),
                    ),
                  ],
                ),
                const CustomSizedBox1(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LandmarksPage(),
                          ),
                        );
                      },
                      child: CategoryBox(
                        bgColor: blue23Opacity,
                        title: 'Landmarks ',
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CulturalPage(),
                          ),
                        );
                      },
                      child: CategoryBox(
                        bgColor: red23Opacity,
                        title: 'Cultural ',
                      ),
                    ),
                  ],
                ),
                const CustomSizedBox2(),
                const BigButtonBox(),
                const CustomSizedBox2(),
                const Divider(),
                Text(
                  "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                  style: TextStyle(
                    fontSize: 12,
                    color: textColor,
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
