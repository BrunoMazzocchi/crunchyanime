import 'package:crunchyanime/anime/widget/character_card.dart';
import 'package:crunchyanime/anime/widget/staff_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitsu_api/kitsu_api.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../domain/bloc/review_bloc.dart';
import '../domain/bloc/staff_bloc.dart';
import '../domain/models/review_data.dart';
import '../domain/models/staff_data.dart';



class InteractiveData extends StatefulWidget {
  final Anime data;
  const InteractiveData({Key? key, required this.data}) : super(key: key);

  @override
  State<InteractiveData> createState() => _InteractiveDataState();
}

class _InteractiveDataState extends State<InteractiveData> {

  late Widget currentInformation = overview;
  late Widget overview;
  late Widget staff = StaffWidget(id: "${widget.data.id}");
  late Widget reviews = ReviewWidget(id: "${widget.data.id}");
  @override
  void initState() {
    overview = Overview( id: "${widget.data.id}", videoId: '${widget.data.attributes?.youtubeVideoId}',);
    super.initState();
  }

  void changeInformation(Widget widget) {
    setState(() {
      currentInformation = widget;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 150),
            height: MediaQuery.of(context).size.height - 175,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(33, 31, 43, 1),
                  Color.fromRGBO(10, 22, 37, 1)
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        changeInformation(overview);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 0, top: 10),
                        child: const Text(
                          'Overview',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        changeInformation(staff);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 0, top: 10),
                        child: const Text(
                          'Staff',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        changeInformation(reviews);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 0, top: 10),
                        child: const Text(
                          'Reviews',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                          SnackBar snackBar = const SnackBar(content: Text('On dev'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 0, top: 10),
                        child: const Text(
                          'Castings',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 385,
                  margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: currentInformation,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


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
                        itemCount: state.mediaCharacterResult.data?.length,
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
                            itemCount: state.mediaCharacterResult.data?.length,
                            itemBuilder: (context, index) {

                                  return BlocProvider(
                                    create: (context) => CharacterCubit(id: "${state.mediaCharacterResult.data?[index].id}"),
                                    child: CharacterCard(role: "${state.mediaCharacterResult.data?[index].attributes?.role}"),
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
class StaffWidget extends StatefulWidget {
  final String id;
  const StaffWidget({Key? key, required this.id}) : super(key: key);

  @override
  State<StaffWidget> createState() => _StaffWidgetState();
}

class _StaffWidgetState extends State<StaffWidget> {
  late StaffBloc staffBloc = Provider.of(context, listen: false);
  late Future<StaffData>  data;

  @override
  void initState() {
    data = staffBloc.getStaff(widget.id);
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

            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text(
                        "Staff Information",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/staff', arguments: widget.id);
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
                  child: FutureBuilder<StaffData>(
                    future: data,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        if(snapshot.data?.meta?.count==0) {

                          return const Center(
                            child: Text("No staff saved at the moment",
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
                            return StaffCard(
                              id: "${snapshot.data!.data![index].id}",
                              role: "${snapshot.data!.data![index].attributes!.role}", roleCare: true,
                            );
                          },
                        );
                      }
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
                    },
                  ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}


class ReviewWidget extends StatefulWidget {
  final String id;
  const ReviewWidget({Key? key, required this.id}) : super(key: key);

  @override
  State<ReviewWidget> createState() => _ReviewWidgetState();
}

class _ReviewWidgetState extends State<ReviewWidget> {
  late ReviewBloc reviewBloc = Provider.of(context, listen: false);
  late Future<ReviewData>  data;

  @override
  void initState() {
    data = reviewBloc.getReviews(widget.id);
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

            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text(
                        "Some reviews you might like",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          SnackBar snackBar = const SnackBar(content: Text('On dev'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
                  height: 400,
                  child: FutureBuilder<ReviewData>(
                    future: data,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        if(snapshot.data?.meta?.count==0) {

                          return const Center(
                            child: Text("No reviews saved at the moment",
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
                          scrollDirection: Axis.vertical,
                          itemCount: snapshot.data?.data?.length,
                          padding: const EdgeInsets.only(top: 0),
                          itemBuilder: (context, index) {
                            return Container(

                              margin: const EdgeInsets.only(bottom: 10),
                              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(33, 31, 43, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child:  Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('SPOILER: ${snapshot.data?.data?[index].attributes?.spoiler.toString().toUpperCase()}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'SF Pro Display',
                                        ),
                                      ),
                                      Text('Rating: ${snapshot.data?.data?[index].attributes?.rating.toString().toUpperCase()}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'SF Pro Display',
                                        ),
                                      ),
                                      Text('By: ${snapshot.data?.data?[index].attributes?.source.toString().toUpperCase()}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'SF Pro Display',
                                        ),
                                      ),

                                    ],
                                  ),
                                  const SizedBox(height: 10,),
                                  SizedBox(
                                    height: 150,
                                    child: ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      padding: const EdgeInsets.only(top: 0),
                                      itemCount: 10,
                                      itemBuilder: (context, index) {

                                        return Text('Review: ${snapshot.data?.data?[index].attributes?.content}',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                            fontFamily: 'SF Pro Display',
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          maxLines: 15,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }
                      return Shimmer(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.grey[300]!,
                              Colors.grey[100]!,
                              Colors.grey[300]!,
                            ],
                          ),
                          child: ListView.builder(
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                                  width: double.infinity,
                                  height: 200,
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(33, 31, 43, 1),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                );
                              }
                          )
                      );
                    },
                  ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
