import 'package:crunchyanime/anime/widget/interactive_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:kitsu_api/kitsu_api.dart';
import 'package:sqflite/sqflite.dart';

import '../database/database.dart';


class OpenAnimeScreen extends StatefulWidget {
  final Anime data;
  const OpenAnimeScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<OpenAnimeScreen> createState() => _OpenAnimeScreenState();
}

class _OpenAnimeScreenState extends State<OpenAnimeScreen> {



  @override
  void initState() {
    context.read<KitsuAnimeBloc>().add(ResetAnimeInformation());
    context.read<KitsuAnimeBloc>().add(AnimeInformationFetched(id: "${widget.data.id}"));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    String posterImage = widget.data.attributes?.coverImage?.original ?? "https://static1.cbrimages.com/wordpress/wp-content/uploads/2019/12/Featured-Image-Shonen-Jump-wrong-better-Cropped.jpg";

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
class RankingData extends StatefulWidget {
  final Anime data;
  const RankingData({Key? key, required this.data}) : super(key: key);

  @override
  State<RankingData> createState() => _RankingDataState();
}

class _RankingDataState extends State<RankingData> {
  IconData notBookmarked = Icons.bookmark_border;
  IconData bookmarked = Icons.bookmark;
  late bool isFav = false;
  void save() {
    setState(() {
      isFav = !isFav;
    });
  }
  void saveFav() async {
    var db = await DB.instance.database;
    if (isFav) {
      await db?.insert(
        'favourite',
        {
          'id': widget.data.id,
        },
        conflictAlgorithm: ConflictAlgorithm.replace,
      );

    } else {
      await db?.delete(
        'favourite',
        where: "id = ?",
        whereArgs: [widget.data.id],
      );
    }

  }
  void checkFav() async {
    var db = await DB.instance.database;
    final List<Map<String, Object?>>? maps = await db?.query('favourite', where: "id = ?", whereArgs: [widget.data.id]);
    if (maps!.isEmpty) {
      setState(() {
        isFav = false;
      });
    } else {
      setState(() {
        isFav = true;
      });
    }
  }
  @override
  void initState() {
    checkFav();
    super.initState();
  }



  @override
  Widget build(BuildContext context) {

    if(isFav) {
      notBookmarked = bookmarked;
      saveFav();
    } else {
      notBookmarked = Icons.bookmark_border;
      saveFav();
    }


    return Positioned(
      top: 130,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: 100,
              height: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                  NetworkImage("${widget.data.attributes?.posterImage?.original}"),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 180,
              margin: const EdgeInsets.only(top: 50),
              height: 130,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 250,
                          child: Text(
                            "${widget.data.attributes?.canonicalTitle}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.normal),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            save();
                          },
                          icon:  Icon(notBookmarked,
                            color: Colors.white,
                            size: 20,),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                      width: 200,
                      child: Text(
                        "${widget.data.attributes?.synopsis}",
                        style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.normal),
                        textAlign: TextAlign.justify,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 3,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text('Rank',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.bold)),
                            Text('# ${widget.data.attributes?.averageRating}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.normal)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text('Popularity',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.bold)),
                            Text('# ${widget.data.attributes?.popularityRank}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.normal)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text('Age Rating',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.bold)),
                            Text('${widget.data.attributes?.ageRating}',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.normal)),
                          ],
                        )
                      ],
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
