// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

//Ads Card
class AdsCard extends StatelessWidget {
  const AdsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45),
      child: Container(
        height: 180,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 30),
              blurRadius: 60,
              spreadRadius: 0,
              color: Color(0xFF393939).withOpacity(0.1),
            ),
          ],
        ),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: -30,
              right: 35,
              child: Image.asset(
                'assets/image.png',
                height: 100,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              bottom: 60,
              left: 20,
              child: Text(
                'Apple Watch',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              bottom: 40,
              left: 20,
              child: Text(
                'Series 6 . Red',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff868686),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 20,
              child: Text(
                '\$359',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff5956E9),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
