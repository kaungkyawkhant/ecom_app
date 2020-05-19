import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class Xd_account_dashboard extends StatelessWidget {
  static const String id = 'Xd_account_dashboard';
  Xd_account_dashboard({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            width: 360.0,
            height: 301.0,
            decoration: BoxDecoration(
              color: const Color(0xff2699fb),
            ),
          ),
          Transform.translate(
            offset: Offset(147.0, 72.0),
            child:
                // Adobe XD layer: 'Profile' (component)
                Container(),
          ),
          Transform.translate(
            offset: Offset(120.0, 144.0),
            child: SizedBox(
              width: 110.0,
              child: Text(
                'John Doe',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 20,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                  height: 1.2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(124.0, 160.0),
            child: SizedBox(
              width: 100.0,
              child: Text(
                'San Francisco, CA',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 10,
                  color: const Color(0xffffffff),
                  height: 2.4,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(236.0, 220.0),
            child: SizedBox(
              width: 42.0,
              child: Text(
                '24k',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 20,
                  color: const Color(0xffffffff),
                  height: 1.2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(219.0, 240.0),
            child: SizedBox(
              width: 76.0,
              child: Text(
                'FOLLOWERS',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 10,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                  height: 2.4,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(67.0, 220.0),
            child: SizedBox(
              width: 44.0,
              child: Text(
                '140',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 20,
                  color: const Color(0xffffffff),
                  height: 1.2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(69.0, 240.0),
            child: SizedBox(
              width: 40.0,
              child: Text(
                'SHOTS',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 10,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                  height: 2.4,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(151.0, 220.0),
            child: SizedBox(
              width: 44.0,
              child: Text(
                '140',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 20,
                  color: const Color(0xffffffff),
                  height: 1.2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(141.0, 240.0),
            child: SizedBox(
              width: 64.0,
              child: Text(
                'PROJECTS',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 10,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                  height: 2.4,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(49.0, 303.0),
            child: Text(
              'Feed',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xff0c70e2),
                fontWeight: FontWeight.w700,
                height: 3.4285714285714284,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(49.0, 352.0),
            child: Text(
              'Explore',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xff0c70e2),
                fontWeight: FontWeight.w700,
                height: 3.4285714285714284,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(49.0, 402.0),
            child: Text(
              'Messages',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xff0c70e2),
                fontWeight: FontWeight.w700,
                height: 3.4285714285714284,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(49.0, 450.0),
            child: Text(
              'Photos',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xff0c70e2),
                fontWeight: FontWeight.w700,
                height: 3.4285714285714284,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(49.0, 499.0),
            child: Text(
              'Videos',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xff0c70e2),
                fontWeight: FontWeight.w700,
                height: 3.4285714285714284,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(49.0, 548.0),
            child: Text(
              'Settings',
              style: TextStyle(
                fontFamily: 'Arial',
                fontSize: 14,
                color: const Color(0xff0c70e2),
                fontWeight: FontWeight.w700,
                height: 3.4285714285714284,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(280.0, 420.0),
            child: Container(
              width: 32.0,
              height: 32.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: const Color(0xffe20c4e),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(289.0, 401.0),
            child: SizedBox(
              width: 14.0,
              child: Text(
                '2',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 14,
                  color: const Color(0xffdfe2e6),
                  fontWeight: FontWeight.w700,
                  height: 3.4285714285714284,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(280.0, 321.0),
            child: Container(
              width: 32.0,
              height: 32.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: const Color(0xffe20c4e),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(289.0, 302.0),
            child: SizedBox(
              width: 14.0,
              child: Text(
                '2',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 14,
                  color: const Color(0xffdfe2e6),
                  fontWeight: FontWeight.w700,
                  height: 3.4285714285714284,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(280.0, 470.0),
            child: Container(
              width: 32.0,
              height: 32.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: const Color(0xffe20c4e),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(289.0, 451.0),
            child: SizedBox(
              width: 14.0,
              child: Text(
                '2',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 14,
                  color: const Color(0xffdfe2e6),
                  fontWeight: FontWeight.w700,
                  height: 3.4285714285714284,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(280.0, 371.0),
            child: Container(
              width: 32.0,
              height: 32.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: const Color(0xffe20c4e),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(289.0, 352.0),
            child: SizedBox(
              width: 14.0,
              child: Text(
                '2',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 14,
                  color: const Color(0xffdfe2e6),
                  fontWeight: FontWeight.w700,
                  height: 3.4285714285714284,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(280.0, 515.0),
            child: Container(
              width: 32.0,
              height: 32.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: const Color(0xffe20c4e),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(289.0, 496.0),
            child: SizedBox(
              width: 14.0,
              child: Text(
                '2',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 14,
                  color: const Color(0xffdfe2e6),
                  fontWeight: FontWeight.w700,
                  height: 3.4285714285714284,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(280.0, 565.0),
            child: Container(
              width: 32.0,
              height: 32.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: const Color(0xffe20c4e),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(289.0, 546.0),
            child: SizedBox(
              width: 14.0,
              child: Text(
                '2',
                style: TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 14,
                  color: const Color(0xffdfe2e6),
                  fontWeight: FontWeight.w700,
                  height: 3.4285714285714284,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
