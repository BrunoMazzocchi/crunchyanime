import 'package:crunchyanime/anime/domain/bloc/anime_bloc.dart';
import 'package:crunchyanime/anime/domain/models/anime_container.dart';
import 'package:crunchyanime/anime/provider/character/character_data_provider.dart';
import 'package:crunchyanime/anime/widget/character_card.dart';
import 'package:crunchyanime/home/widget/anime_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../anime/domain/bloc/character_bloc.dart';
import '../anime/domain/models/character_data.dart';

class AllAnime extends StatefulWidget {
  final String type;

  const AllAnime({Key? key, required this.type}) : super(key: key);

  @override
  State<AllAnime> createState() => _AllAnimeState();
}

class _AllAnimeState extends State<AllAnime> {
  late AnimeBloc animeBloc = Provider.of(context, listen: false);

  int _page = 0;
  bool _hasNext = false;
  bool _isFirstLoading = false;
  bool _isMoreLoading = false;
  bool more = false;
  late AnimeContainer _anime;
  late Future<AnimeContainer> futureAnimeContainer;

  _firstLoad() async {
    setState(() {
      _isFirstLoading = true;
    });
    futureAnimeContainer =
        animeBloc.getAllAnimeOrAllTrending(widget.type, _page);

    futureAnimeContainer.then((value) => setState(() {
      _anime = value;
      _isFirstLoading = false;
      if (value.links?.next != null) {
        _hasNext = true;
      }
    }));
  }

  void _loadMore() async {
    if (_hasNext == true &&
        _isFirstLoading == false &&
        _isMoreLoading == false &&
        _controller.position.extentAfter < 200) {
      setState(() {
        _isMoreLoading = true;
      });
      _page += 20;
      futureAnimeContainer =
          animeBloc.getAllAnimeOrAllTrending(widget.type, _page);

      futureAnimeContainer.then((value) => setState(() {
        _anime.data!.addAll(value.data!);
        if (value.links!.next != null) {
          _hasNext = true;
        }
      }));

      setState(() {
        _isMoreLoading = false;
      });
    }
  }

  late ScrollController _controller;

  @override
  void initState() {
    _firstLoad();
    super.initState();
    _controller = ScrollController()..addListener(_loadMore);
  }

  @override
  void dispose() {
    _controller.removeListener(_loadMore);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _isFirstLoading == true
        ?  const Center(
      child: CircularProgressIndicator(),
    )
        :  Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        height: MediaQuery.of(context).size.height,
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
             Text(
              'All anime ${widget.type}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'SF Pro Display',
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 150,
              child: GridView.builder(
                controller: _controller,
                padding: const EdgeInsets.only(top: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.5,
                ),
                shrinkWrap: true,
                itemCount: _anime.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 150,
                        height: 210,
                        child: AnimeCard(
                          data: _anime.data![index],
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
