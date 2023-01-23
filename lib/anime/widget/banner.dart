import 'package:flutter/material.dart';

class OpenAnimeBanner extends StatelessWidget {
  final String poster;
  const OpenAnimeBanner({Key? key, required this.poster}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(poster),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
