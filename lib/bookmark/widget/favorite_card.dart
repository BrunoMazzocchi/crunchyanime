import 'package:flutter/material.dart';

class FavoriteCard extends StatefulWidget {
  final String assetImage;
  final String title;
  const FavoriteCard({Key? key, required this.assetImage, required this.title, }) : super(key: key);

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 150,
      height: 250,
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Stack(
        children: [
          Container(
            width: 150,
            height: 200,
            decoration:  BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage(
                    widget.assetImage),
                fit: BoxFit.cover,
              ),
              borderRadius:
              const BorderRadius.all(Radius.circular(10)),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 150,
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  widget.title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'SF Pro Display',
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
