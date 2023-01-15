import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'coming_card.dart';

class ComingList extends StatelessWidget {
  const ComingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Coming this season",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'SF Pro Display',
                ),
              ),
              InkWell(
                child: const Text(
                  "See All for the season",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'SF Pro Display',
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
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
          height: 150,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              ComingCard('assets/images/nier.png', 'Nier Automata', 'January 2023'),
              ComingCard('assets/images/vinland.png', 'Vinland 2', 'January 2023'),
              ComingCard('assets/images/myhero.png', 'Boku No Hero 6', 'January 2023'),
              ComingCard('assets/images/boruto.jpg', 'Boruto', 'January 2023'),

            ],
          ),
        )
      ],
    );
  }
}
