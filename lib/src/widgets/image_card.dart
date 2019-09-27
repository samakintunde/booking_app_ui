import 'package:booking_app_ui/src/models/place.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  ImageCard({@required this.place});

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0, 12.0),
                  blurRadius: 32.0),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/${place.image}',
                  width: 208,
                  height: 256,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.all(12.0),
                    height: 100,
                    width: 208,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.5),
                          Colors.black.withOpacity(0),
                        ],
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Text(place.name),
                        Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.calendar_today),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text('${place.days} days'),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.directions_car),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text('20 km'),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
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
