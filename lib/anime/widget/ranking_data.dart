import 'package:flutter/material.dart';

class RankingData extends StatelessWidget {
  const RankingData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 130,
      left: 20,
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 40,
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 100,
              height: 180,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/onepiecewano.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 200,
              margin: const EdgeInsets.only(top: 50),
              height: 120,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'One Piece',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.normal),
                    ),
                    const SizedBox(
                      height: 50,
                      width: 200,
                      child: Text(
                        "Gol D. Roger was known as the \"Pirate King,\" the strongest and most infamous being to have sailed the Grand Line. The capture and death of Roger by the World Government brought a change throughout the world. His last words before his death revealed the existence of the greatest treasure in the world, One Piece. It was this revelation that brought about the Grand Age of Pirates, men who dreamed of finding One Piece—which promises an unlimited amount of riches and fame—and quite possibly the pinnacle of glory and the title of the Pirate King.\nEnter Monkey D. Luffy, a 17-year-old boy who defies your standard definition of a pirate. Rather than the popular persona of a wicked, hardened, toothless pirate ransacking villages for fun, Luffy’s reason for being a pirate is one of pure wonder: the thought of an exciting adventure that leads him to intriguing people and ultimately, the promised treasure. Following in the footsteps of his childhood hero, Luffy and his crew travel across the Grand Line, experiencing crazy adventures, unveiling dark mysteries and battling strong enemies, all in order to reach the most coveted of all fortunes—One Piece.\n[Written by MAL Rewrite]",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text('Rank',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.bold)),
                            Text('#29',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.normal)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text('Popularity',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.bold)),
                            Text('#14',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.normal)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text('Age Rating',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.bold)),
                            Text('PG-13',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.normal)),
                          ],
                        )
                      ],
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
