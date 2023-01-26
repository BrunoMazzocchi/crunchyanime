import 'package:crunchyanime/home/widget/anime_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
            } else if (snapshot.hasError) {
              return  Text("${snapshot.error}");
            }
            return const Center(child: CircularProgressIndicator());
          },
        ),
      )
    ],);
  }
}
