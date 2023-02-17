import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitsu_api/kitsu_api.dart';
import 'package:shimmer/shimmer.dart';

class AnimeList extends StatefulWidget {
  const AnimeList({Key? key}) : super(key: key);

  @override
  State<AnimeList> createState() => _AnimeListState();
}

class _AnimeListState extends State<AnimeList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Anime',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  fontFamily: 'SF Pro Display',
                ),
              ),
              InkWell(
                onTap: () {
                  //    Navigator.pushNamed(context, '/all_anime', arguments: widget.type);
                },
                child: const Text(
                  'See All ${'Anime'}',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    fontFamily: 'SF Pro Display',
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            height: 220,
            child: BlocBuilder<KitsuTrendingBloc, KitsuTrendingState>(
              builder: (context, state) {
                switch (state.status) {
                  case AnimeStatus.success:
                    if(state.anime.isEmpty){
                      return const Center(child: Text('No Anime Found'));
                    }
                    return ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        return index >= state.anime.length
                            ?  _shimmer()
                            : AnimeCard(data: state.anime[index]);
                      },
                      itemCount: state.anime.length,
                    );
                  case AnimeStatus.failure:
                    return const Center(child: Text('Something went wrong'));

                  case AnimeStatus.initial:
                    return _shimmer();
                }

              },
            )),
      ],
    );
  }

  Shimmer _shimmer() {
    return Shimmer(
      gradient: const LinearGradient(
          colors: [Colors.grey, Colors.white, Colors.grey],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(right: 10),
            width: 120,
            height: 200,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(33, 31, 43, 1),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 120,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Container(
                    width: 100,
                    height: 10,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 5),
                  child: SizedBox(
                    height: 10,
                    child: Container(
                      width: 50,
                      height: 10,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class AnimeCard extends StatefulWidget {
  final Anime data;

  const AnimeCard({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<AnimeCard> createState() => _AnimeCardState();
}

class _AnimeCardState extends State<AnimeCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/open_anime_screen',
            arguments: widget.data);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        width: 120,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: Stack(
          children: [
            Container(
              width: 120,
              height: 150,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(33, 31, 43, 1),
                image: DecorationImage(
                  image: NetworkImage(
                      "${widget.data.attributes?.posterImage?.original}"),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(5),
                width: 120,
                height: 70,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(33, 31, 43, 1),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          "${widget.data.attributes?.canonicalTitle}",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 3,
                        ),
                      ),
                      Text(
                        "${widget.data.attributes?.status?.toUpperCase()}",
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
