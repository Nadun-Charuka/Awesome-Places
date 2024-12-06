import 'package:awesome_places_v77/pages/bookingpage/widgets/teamsize_box.dart';
import 'package:awesome_places_v77/pages/bookingpage/widgets/userdata_box.dart';
import 'package:awesome_places_v77/pages/bookingpage/widgets/vehicle_card_box.dart';
import 'package:awesome_places_v77/utils/colors.dart';
import 'package:awesome_places_v77/widgets/custom_button.dart';
import 'package:awesome_places_v77/widgets/custom_sized_box.dart';
import 'package:awesome_places_v77/widgets/raiting_box.dart';
import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Lets Book A Tour!",
          style: TextStyle(
            fontSize: 35,
            color: gray,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                style: TextStyle(
                  fontSize: 15,
                  color: textColor,
                ),
              ),
              const CustomSizedBox1(),
              Text(
                "Select a vehical",
                style: TextStyle(
                  fontSize: 24,
                  color: gray,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  VehicleCardBox(
                    imgUrl: 'assets/car.png',
                    vehicleName: 'Car',
                  ),
                  VehicleCardBox(
                    imgUrl: 'assets/bike.png',
                    vehicleName: 'Bike',
                  ),
                  VehicleCardBox(
                    imgUrl: 'assets/bus.png',
                    vehicleName: 'Bus',
                  ),
                ],
              ),
              const CustomSizedBox2(),
              Text(
                "Selected a Place",
                style: TextStyle(
                  fontSize: 24,
                  color: gray,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/tour.png",
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Selected a Place",
                            style: TextStyle(
                              fontSize: 24,
                              color: white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            "Welcome to our travel app, your ultimate guide to discovering captivating destinations around the globe! Whether you're seeking the tranquility visit offers something for every traveler.",
                            style: TextStyle(
                              fontSize: 15,
                              color: white,
                            ),
                          ),
                          const RaitingBox(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const CustomSizedBox2(),
              Text(
                "Fill The Details",
                style: TextStyle(
                  fontSize: 24,
                  color: gray,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const CustomSizedBox1(),
              const UserdataBox(
                title: 'User Name',
                hint: 'Nadu',
              ),
              const CustomSizedBox1(),
              const UserdataBox(
                title: 'County',
                hint: 'Sri Lanka',
              ),
              const CustomSizedBox2(),
              Text(
                "Team size",
                style: TextStyle(
                  fontSize: 24,
                  color: gray,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const TeamsizeBox(),
              const CustomSizedBox2(),
              const Center(
                child: CustomButton(),
              ),
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
    );
  }
}
