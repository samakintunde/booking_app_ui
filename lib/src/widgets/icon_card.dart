import 'package:flutter/material.dart';

class IconCard extends StatelessWidget {
  IconCard({this.iconData, this.text});

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 72.0,
            width: 72.0,
            decoration: BoxDecoration(
              color: Colors.amber.withOpacity(0.25),
              borderRadius: BorderRadius.circular(8.0),
            ),
            alignment: Alignment.center,
            child: IconButton(
              icon: Icon(
                iconData,
                size: 36.0,
                color: Colors.amber,
              ),
              onPressed: () {
                print('pressed!');
              },
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
