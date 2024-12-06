// models/place.dart
import 'package:flutter/material.dart';

class Place {
  final String title;
  final Color titleColor;
  final String imageUrl;
  final String description;

  Place({
    required this.title,
    required this.titleColor,
    required this.imageUrl,
    required this.description,
  });
}
