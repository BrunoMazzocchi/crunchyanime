import 'package:crunchyanime/home/widget/anime_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import '../../anime/domain/bloc/anime_bloc.dart';
import '../../anime/domain/models/anime_container.dart';
import '../../anime/domain/models/anime_data.dart';

class AnimeList extends StatefulWidget {
  final String title;
  final String type;
  const AnimeList({Key? key, required this.title, required this.type}) : super(key: key);

  @override
  State<AnimeList> createState() => _AnimeListState();
}

class _AnimeListState extends State<AnimeList> {

  late AnimeBloc animeBloc = Provider.of(context, listen: false);
  late Future<AnimeContainer> data;

  @override
  void initState() {
    data = animeBloc.getList(widget.type);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
             Text(
              widget.title,
              style: const  TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.normal,
                fontFamily: 'SF Pro Display',
              ),
            ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/all_anime', arguments: widget.type);
                },
                child:   Text(
                  'See All ${widget.type}',
                  style: const TextStyle(
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
        child: FutureBuilder<AnimeContainer>(
          future: data,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snapshot.data!.data?.length,
                itemBuilder: (context, index) {
                  return AnimeCard(data: snapshot.data!.data![index]);
                },
              );
            }
            return Shimmer(
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
          },
        ),
      )
    ],);
  }
}
