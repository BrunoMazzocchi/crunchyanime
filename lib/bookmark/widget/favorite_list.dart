import 'package:crunchyanime/bookmark/widget/favorite_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FavoriteList extends StatelessWidget {
  const FavoriteList({Key? key}) : super(key: key);

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
              "Your Favorites",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.normal,
                fontFamily: 'SF Pro Display',
              ),
            ),
            InkWell(
              child: const Text(
                "See All Favorites",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'SF Pro Display',
                ),
              ),
              onTap: () {
                if (kDebugMode) {
                  print("See All");
                }
              },
            )
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 250,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: const [
             FavoriteCard(assetImage: 'assets/images/onepiecewano.jpg', title: 'One Piece'),
            FavoriteCard(assetImage: 'assets/images/dressupdarling.png', title: 'My Dress Up Darling'),
            FavoriteCard(assetImage: 'assets/images/demonslayer.jpg', title: 'Demon Slayer'),
            FavoriteCard(assetImage: 'assets/images/eternity.png', title: 'To Your Eternity'),
          ],
        ),
      )
    ],);
  }
}
