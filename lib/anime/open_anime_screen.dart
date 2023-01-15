

import 'package:crunchyanime/anime/widget/banner.dart';
import 'package:crunchyanime/anime/widget/interactive_data.dart';
import 'package:crunchyanime/anime/widget/ranking_data.dart';
import 'package:flutter/material.dart';


import '../home/widget/watching_card.dart';

class OpenAnimeScreen extends StatefulWidget {
  const OpenAnimeScreen({Key? key}) : super(key: key);

  @override
  State<OpenAnimeScreen> createState() => _OpenAnimeScreenState();
}

class _OpenAnimeScreenState extends State<OpenAnimeScreen> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: const [
             OpenAnimeBanner(),
             InteractiveData(),
             RankingData(),
          ],
        ),
      ),
    );
  }
}
