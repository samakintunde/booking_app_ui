import 'package:booking_app_ui/src/demo/places.dart';
import 'package:booking_app_ui/src/widgets/image_card.dart';
import 'package:flutter/material.dart';

class ImageCardCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320.0,
      child: ListView.builder(
        itemCount: places.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, i) => ImageCard(place: places[i]),
      ),
    );
  }
}
