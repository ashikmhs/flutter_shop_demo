// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: ListTile(
          leading: Image.asset(
            'assets/image.png',
            height: 60,
            width: 50,
          ),
          title: const Text(
            'Apple Watch',
            style: const TextStyle(
              color: Colors.black,
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: const Text(
            'Series 6 . Red',
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black54,
            ),
          ),
          trailing: const Text(
            '\$389',
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
