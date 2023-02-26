import 'package:flutter/material.dart';
import 'package:kitsu_api/kitsu_api.dart';
import 'package:shimmer/shimmer.dart';

class CharacterCard extends StatefulWidget {
  final CharacterInformation character;

  const CharacterCard({Key? key, required this.character}) : super(key: key);

  @override
  State<CharacterCard> createState() => _CharacterCardState();
}

class _CharacterCardState extends State<CharacterCard> {
  bool roleCare = false;

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 120,
      height: 200,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(33, 31, 43, 1),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 120,
            height: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                   "${widget.character.attributes?.image}" ??
                        "https://via.placeholder.com/150"),
                fit: BoxFit.cover,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              "${widget.character.attributes?.name}" ?? "Unknown",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.normal,
                fontFamily: 'SF Pro Display',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, bottom: 5),
            child: SizedBox(
              height: 10,
              child: Text(
                "Main".toUpperCase(),
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'SF Pro Display',
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget characterShimmer() {
    return Shimmer(
      gradient: const LinearGradient(
          colors: [Colors.grey, Colors.white, Colors.grey],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight),
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        width: 120,
        height: 200,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(33, 31, 43, 1),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 120,
              height: 150,
              decoration: const BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Container(
                width: 100,
                height: 10,
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, bottom: 5),
              child: SizedBox(
                height: 10,
                child: Container(
                  width: 50,
                  height: 10,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
