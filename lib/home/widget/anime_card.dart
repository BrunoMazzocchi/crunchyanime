import 'package:flutter/material.dart';

import '../../anime/domain/models/anime_data.dart';

class AnimeCard extends StatefulWidget {
  final AnimeData data;

  const AnimeCard({Key? key, required this.data, }) : super(key: key);

  @override
  State<AnimeCard> createState() => _AnimeCardState();
}

class _AnimeCardState extends State<AnimeCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/open_anime_screen',
            arguments: widget.data);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        width: 120,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Stack(
          children: [
            Container(
              width: 120,
              height: 150,
              decoration:  BoxDecoration(
                color: const Color.fromRGBO(33, 31, 43, 1),
                image: DecorationImage(
                  image: NetworkImage("${widget.data.attributes?.posterImage?.original}"),
                  fit: BoxFit.cover,
                ),
                borderRadius:
                const  BorderRadius.only(
              topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(5),
                width: 120,
                height: 70,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(33, 31, 43, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "${widget.data.attributes?.canonicalTitle}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ),
                      Text(
                        "${widget.data.attributes?.status?.toUpperCase()}",
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
