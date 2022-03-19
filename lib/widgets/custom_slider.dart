import 'package:flutter/material.dart';

//custom slider
class MySlider extends StatelessWidget {
  Color? color;

  MySlider({@required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
        left: 10,
      ),
      height: 115,
      width: 240,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '40% Off During \nCovid 19',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.w600,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'assets/fruits-and-vegetables.png',
              height: 55,
            ),
          ),
        ],
      ),
    );
  }
}
