

import 'package:crunchyanime/anime/widget/banner.dart';
import 'package:crunchyanime/anime/widget/interactive_data.dart';
import 'package:crunchyanime/anime/widget/ranking_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:kitsu_api/kitsu_api.dart';


class OpenAnimeScreen extends StatefulWidget {
  final Anime data;
  const OpenAnimeScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<OpenAnimeScreen> createState() => _OpenAnimeScreenState();
}

class _OpenAnimeScreenState extends State<OpenAnimeScreen> {




  @override
  Widget build(BuildContext context) {
    String posterImage = widget.data.attributes?.coverImage?.original ?? "https://static1.cbrimages.com/wordpress/wp-content/uploads/2019/12/Featured-Image-Shonen-Jump-wrong-better-Cropped.jpg";

    BlocProvider.of<KitsuAnimeBloc>(context).add(
      AnimeInformationFetched(
        id: widget.data.id ?? "",
      ),
    );




    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children:  [
             OpenAnimeBanner(poster: posterImage,),
             InteractiveData(data: widget.data, ),
             RankingData(data: widget.data,),
          ],
        ),
      ),
    );
  }
}
