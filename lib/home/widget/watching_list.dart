import 'package:crunchyanime/home/widget/watching_card.dart';
import 'package:flutter/material.dart';

class WatchingList extends StatelessWidget {
  const WatchingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Continue Watching",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.normal,
                fontFamily: 'SF Pro Display',
              ),
            ),
            InkWell(
              child: const Text(
                "See All 24",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'SF Pro Display',
                ),
              ),
              onTap: () {
                print("See All");
              },
            )
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
             WatchingCard(assetImage: 'assets/images/onepiecewano.jpg', title: 'One Piece', status: 'Episode 800 - Season 20'),
             WatchingCard(assetImage: 'assets/images/dressupdarling.png', title: 'My Dress Up Darling', status: 'Episode 2 - Season 1'),
             WatchingCard(assetImage: 'assets/images/demonslayer.jpg', title: 'Demon Slayer', status: 'Episode 20 - Season 1'),
             WatchingCard(assetImage: 'assets/images/eternity.png', title: 'To Your Eternity', status: 'Episode 1 - Season 1'),
          ],
        ),
      )
    ],);
  }
}