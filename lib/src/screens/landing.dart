import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/images/booking-landing.jpeg',
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
                height: 128.0,
                width: 128.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(64.0)),
                  color: Colors.white,
                ),
                alignment: Alignment.topCenter,
                child: Icon(
                  Icons.change_history,
                  size: 108.0,
                  color: Colors.amber,
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 400.0,
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    // Colors.black.withOpacity(1),
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0),
                  ],
                ),
              ),
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'Welcome to Switch',
                      style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 36.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      'We will help you locate persons to switch your oversized piece of sh*t with at nearly negligible cost. We will help you locate persons to switch your oversized piece of sh*t with at nearly negligible cost.',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 16.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 48.0),
                    GestureDetector(
                      onTap: () {
                        return Navigator.pushNamed(context, '/home');
                      },
                      child: Container(
                        width: double.infinity,
                        height: 52.0,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'LOG IN',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            SizedBox(
                              width: 24.0,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              size: 18.0,
                              color: Colors.white70,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
