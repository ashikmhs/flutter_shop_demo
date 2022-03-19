// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_store/widgets/ads_card.dart';

import 'widgets/favorites_card.dart';

class MyAdds extends StatelessWidget {
  const MyAdds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'My Ads',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.black,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.shopping_bag_outlined,
                ),
                text: 'My Ads',
              ),
              Tab(
                icon: Icon(Icons.favorite_border_outlined),
                text: 'My Favorites',
              ),
              // Tab(
              //   icon: Icon(Icons.brightness_5_sharp),
              // ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Tabone(),
            TabTwo(),
          ],
        ),
      ),
    );
  }
}

//........................................................
//tabOne
class Tabone extends StatefulWidget {
  const Tabone({Key? key}) : super(key: key);

  @override
  State<Tabone> createState() => _TaboneState();
}

class _TaboneState extends State<Tabone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AdsCard(),
            AdsCard(),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AdsCard(),
            AdsCard(),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AdsCard(),
            AdsCard(),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AdsCard(),
            AdsCard(),
          ],
        ),
        SizedBox(
          height: 40,
        ),
      ],
    ));
  }
}

//............................................................
//tabTwo
class TabTwo extends StatefulWidget {
  const TabTwo({Key? key}) : super(key: key);

  @override
  State<TabTwo> createState() => _TabTwoState();
}

class _TabTwoState extends State<TabTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 15,
        ),
        child: ListView(
          children: [
            MyCard(),
            MyCard(),
            MyCard(),
            MyCard(),
            MyCard(),
            MyCard(),
            MyCard(),
            MyCard(),
            MyCard(),
            MyCard(),
            MyCard(),
            MyCard(),
            MyCard(),
            MyCard(),
          ],
        ),
      ),
    );
  }
}
