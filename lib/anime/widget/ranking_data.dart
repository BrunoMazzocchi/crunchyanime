import 'package:flutter/material.dart';

import '../domain/models/anime_data.dart';

class RankingData extends StatelessWidget {
  final AnimeData data;
  const RankingData({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 130,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 100,
              height: 180,
              decoration:  BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("${data.attributes?.posterImage?.original}"),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 180,
              margin: const EdgeInsets.only(top: 50),
              height: 120,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      "${data.attributes?.canonicalTitle}",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.normal),
                    ),
                     SizedBox(
                      height: 50,
                      width: 200,
                      child: Text(
                        "${data.attributes?.synopsis}",
                        style: const TextStyle(
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
                          children:  [
                            const Text('Rank',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.bold)),
                            Text('# ${data.attributes?.averageRating}',
                                style: const  TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.normal)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:  [
                            const Text('Popularity',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.bold)),
                            Text('# ${data.attributes?.popularityRank}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.normal)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children:  [
                            const  Text('Age Rating',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.bold)),
                            Text('${data.attributes?.ageRating}',
                                style: const TextStyle(
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
