import 'package:flutter/material.dart';

class ComingCard extends StatefulWidget {
  final String assetImage;
  final String title;
  final String streamOn;
  const ComingCard(this.assetImage, this.title, this.streamOn, {Key? key}) : super(key: key);

  @override
  State<ComingCard> createState() => _ComingCardState();
}

class _ComingCardState extends State<ComingCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 150,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Stack(
        children: [
          Container(
            width: 150,
            height: 145,
            decoration:  BoxDecoration(
              color: Colors.black,
              image:  DecorationImage(
                image: AssetImage(widget.assetImage),
                fit: BoxFit.cover,
              ),
              borderRadius:
              const  BorderRadius.all(Radius.circular(10)),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    Text(
                      widget.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                    Text(
                      widget.streamOn,
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
    );
  }
}
