import 'package:flutter/material.dart';

class WatchingCard extends StatefulWidget {
  final String assetImage;
  final String title;
  final String status;
  const WatchingCard({Key? key, required this.assetImage, required this.title, required this.status}) : super(key: key);

  @override
  State<WatchingCard> createState() => _WatchingCardState();
}

class _WatchingCardState extends State<WatchingCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/anime');
      },
      child: Container(
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
                  child: Column(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150,
                        height: 2,
                        color: Colors.orange,
                      ),
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
                        widget.status,
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
