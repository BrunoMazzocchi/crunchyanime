import 'package:crunchyanime/bookmark/widget/favorite_card.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

import '../../anime/domain/bloc/anime_bloc.dart';
import '../../anime/domain/models/anime_data.dart';
import '../../database/database.dart';

class FavoriteList extends StatefulWidget {
  const FavoriteList({Key? key}) : super(key: key);

  @override
  State<FavoriteList> createState() => _FavoriteListState();
}

class _FavoriteListState extends State<FavoriteList> {

  late Future<List<AnimeData>> futureAnimeDataList;
  Future<List<int>> getFavoriteIdList() async {
    var db = await DB.instance.database;
    final List<Map<String, Object?>>? maps = await db?.query('favourite');
    List<int> idList = [];
    for (var i = 0; i < maps!.length; i++) {
      idList.add(maps[i]['id'] as int);
    }
    return idList;
  }
  late AnimeBloc animeBloc = Provider.of<AnimeBloc>(context, listen: false);
  late Widget body =  thereIsBookmarks();

  Future<List<AnimeData>> getAnimeData() async {
    List<int> idList = await getFavoriteIdList();
    Future<List<AnimeData>> animeDataList = Future.wait(idList.map((id) => animeBloc.getAnime(id.toString())));
    return animeDataList;
  }

  void checkIfEmpty() async {
    List<int> idList = await getFavoriteIdList();
    if (idList.isEmpty) {
      setState(() {
        body =  nothingBookmarked;
      });
    }
  }
  Widget thereIsBookmarks() {
    return  Column(children: [
      Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              "Your Favorites",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontFamily: 'SF Pro Display',
              ),
            ),
          ],
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 250,
        child: FutureBuilder<List<AnimeData>>(
          future: getAnimeData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return FavoriteCard(
                    animeData: snapshot.data![index],
                  );
                },
              );
            } else {
              return  Shimmer(
                gradient: const LinearGradient(
                    colors: [Colors.grey, Colors.white, Colors.grey], begin: Alignment.centerLeft, end: Alignment.centerRight),
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
          },
        ),
      )
    ]);
  }

  Widget nothingBookmarked = SizedBox(
    width: 500,
    height: 250,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:  const [
        Icon(
          Icons.bookmark_border,
          size: 100,
          color: Colors.white,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Nothing Bookmarked',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.normal,
            fontFamily: 'SF Pro Display',
        ),
        )  ],
    ),
  );

  @override
  void initState() {
    checkIfEmpty();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return body;
  }
}
