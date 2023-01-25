
import 'package:crunchyanime/anime/widget/character_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../domain/bloc/anime_bloc.dart';
import '../domain/bloc/character_bloc.dart';
import '../domain/models/categories_data.dart';
import '../domain/models/character_data.dart';

class Overview extends StatefulWidget {
  final String id;
  final String videoId;
  const Overview({Key? key, required this.id, required this.videoId}) : super(key: key);

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  late CharacterBloc  characterBloc = Provider.of(context, listen: false);
  late AnimeBloc  animeBloc = Provider.of(context, listen: false);
  late Future<CharacterData>  data;
  late Future<CategoriesData> categoriesData;
  late YoutubePlayerController _controller;





  @override
  void initState() {
    data = characterBloc.getCharacters(widget.id);
    categoriesData = animeBloc.getCategories(widget.id);
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: false,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: true,
        enableCaption: true,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.only(top: 0),
      children: [
        Column(
          children: [
            SizedBox(
              height: 30,
              child: FutureBuilder<CategoriesData> (
                future: categoriesData,
                builder: (context, snapshot) {
                  if(snapshot.hasData) {
                    if(snapshot.data?.meta?.count==0) {

                      return const Center(
                        child: Text("No categories defined at the moment, probably another shonen anime",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'SF Pro Display',
                          ),
                        ),
                      );
                    }

                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.data?.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                          margin: const EdgeInsets.only(right: 10),
                          width: 100,
                          decoration: const BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child:  Text(
                            snapshot.data!.data![index].attributes!.name!,
                            style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'SF Pro Display',
                          ),
                          textAlign: TextAlign.center,
                        ),
                        );
                      },
                    );
                  } else {
                    return const Text("Loading");
                  }
                } ,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text(
                        "Characters",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                      InkWell(
                         onTap: () {
                            Navigator.pushNamed(context, '/characters', arguments: widget.id);
                        },
                          child: const Text(
                            "See all",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'SF Pro Display',
                            ),
                          ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: FutureBuilder<CharacterData>(
                    future: data,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                       if(snapshot.data?.meta?.count==0) {

                        return const Center(
                          child: Text("No Characters saved at the moment",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'SF Pro Display',
                          ),
                          ),
                        );
                        }

                       return ListView.builder(
                         scrollDirection: Axis.horizontal,
                         itemCount: snapshot.data!.data?.length,
                         itemBuilder: (context, index) {

                           return CharacterCard(
                             id: "${snapshot.data!.data![index].id}",
                             role: "${snapshot.data!.data![index].attributes!.role}", roleCare: true,
                           );
                         },
                       );
                      }
                      else if (snapshot.hasError) {
                        return  Text("${snapshot.error}");
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                 const Padding(
                  padding:  EdgeInsets.only(top: 15, bottom: 15),
                  child:     Text(
                    "Trailer",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: YoutubePlayerBuilder(
                        player: YoutubePlayer(
                          controller: _controller,
                        ),
                        builder: (context, player) {
                          return Column(
                            children: [
                              player,
                            ],
                          );
                        },
                      ),
                    )
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
