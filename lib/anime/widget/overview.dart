import 'package:crunchyanime/anime/widget/character_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitsu_api/kitsu_api.dart';
import 'package:shimmer/shimmer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Overview extends StatefulWidget {
  final String id;
  final String videoId;

  const Overview({Key? key, required this.id, required this.videoId})
      : super(key: key);

  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  late YoutubePlayerController _controller;
  late CharacterInformation characterInformation;
  @override
  void initState() {
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
              child: BlocBuilder<KitsuAnimeBloc, KitsuAnimeState>(
                  builder: (context, state) {
                    switch (state.status) {
                      case AnimeInformationState.initial:
                        return categoriesShimmer();
                      case AnimeInformationState.success:
                        return ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: state.characterSearchResult.data?.length,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 5),
                              margin: const EdgeInsets.only(right: 10),
                              width: 100,
                              decoration: const BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),
                              child: Text(
                                state.animeCategory.data?[index].attributes?.title ??
                                    "No title",
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
                      case AnimeInformationState.failure:
                        return const Center(
                          child: Text(
                            "No categories defined at the moment",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'SF Pro Display',
                            ),
                          ),
                        );
                    }
                  },
                ),
              ),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
                          Navigator.pushNamed(context, '/characters',
                              arguments: widget.id);
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
                  child: BlocBuilder<KitsuAnimeBloc, KitsuAnimeState>(
                    builder: (context, state) {
                      switch (state.status) {
                        case AnimeInformationState.initial:
                          return charactersShimmer();
                        case AnimeInformationState.success:
                          return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: state.characterSearchResult.data?.length,
                            itemBuilder: (context, index) {

                              return CharacterCard(
                                role: "${state.characterSearchResult.data?[index].attributes?.role}",
                                characterInformation: state.characters?[index],
                                roleCare: false,
                              );
                            },
                          );
                        case AnimeInformationState.failure:
                          return const Center(
                            child: Text(
                              "No characters defined at the moment, probably another shonen anime",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'SF Pro Display',
                              ),
                            ),
                          );
                      }
                    },
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  child: Text(
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
                    )),
              ],
            )
          ],
        )
      ],
    );
  }

  Widget charactersShimmer() {
    return Shimmer(
      gradient: const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Colors.grey,
          Colors.white,
          Colors.grey,
        ],
      ),
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10),
            height: 200,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          );
        },
      ),
    );
  }

  Widget categoriesShimmer(){
    return Shimmer(
      gradient: const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Colors.grey,
          Colors.white,
          Colors.grey,
        ],
      ),
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10),
            height: 30,
            width: 100,
            decoration: const BoxDecoration(
              color: Colors.grey,
              borderRadius:
              BorderRadius.all(Radius.circular(10)),
            ),
          );
        },
      ),
    );
  }
}
