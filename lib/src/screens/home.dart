import 'package:booking_app_ui/src/demo/places.dart';
import 'package:booking_app_ui/src/widgets/icon_card.dart';
import 'package:booking_app_ui/src/widgets/image_card_carousel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 8.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.person),
                        onPressed: () {},
                      )
                    ],
                  ),
                  SizedBox(height: 12.0),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: 'Hello!\n',
                                style: TextStyle(color: Colors.amber)),
                            TextSpan(text: 'Where would you like to go?'),
                          ],
                        ),
                        style: Theme.of(context).textTheme.display1.apply(
                              fontFamily: 'Merriweather',
                              fontWeightDelta: 7,
                              color: Colors.grey.shade800,
                            ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconCard(
                          text: 'Africa',
                          iconData: Icons.card_travel,
                        ),
                        IconCard(
                          text: 'Americas',
                          iconData: Icons.card_travel,
                        ),
                        IconCard(
                          text: 'Asia',
                          iconData: Icons.card_travel,
                        ),
                        IconCard(
                          text: 'Europe',
                          iconData: Icons.card_travel,
                        ), // ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 48.0,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Previous Trips",
                              style:
                                  Theme.of(context).textTheme.headline.copyWith(
                                        fontFamily: 'Merriweather',
                                        fontWeight: FontWeight.w700,
                                      ),
                            ),
                            IconButton(
                              icon: Icon(Icons.more_horiz),
                              color: Colors.grey.shade800,
                              onPressed: () {},
                            )
                          ],
                        ),
                        SizedBox(
                          height: 24.0,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 12.0),
                    child: ImageCardCarousel(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
