import 'package:flutter/material.dart';

class OpenAnimeBanner extends StatelessWidget {
  const OpenAnimeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg/onepiecebg.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
