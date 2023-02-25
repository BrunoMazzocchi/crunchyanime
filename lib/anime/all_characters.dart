import 'package:crunchyanime/anime/provider/character/character_data_provider.dart';
import 'package:crunchyanime/anime/widget/character_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'domain/bloc/character_bloc.dart';
import 'domain/models/character_data.dart';

class AllCharacters extends StatefulWidget {
  final String id;

  const AllCharacters({Key? key, required this.id}) : super(key: key);

  @override
  State<AllCharacters> createState() => _AllCharactersState();
}

class _AllCharactersState extends State<AllCharacters> {
  late CharacterBloc characterBloc = Provider.of(context, listen: false);

  int _page = 0;
  bool _hasNext = false;
  bool _isFirstLoading = false;
  bool _isMoreLoading = false;
  bool more = false;
  late CharacterData _characters;
  late Future<CharacterData> futureCharacterData;

   _firstLoad() async {
    setState(() {
      _isFirstLoading = true;
    });
    futureCharacterData =
        characterBloc.getAllAnime(widget.id, _page);

    futureCharacterData.then((value) => setState(() {
          _characters = value;
          _isFirstLoading = false;
          if (value.links!.next != null) {
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
      futureCharacterData =
          characterBloc.getAllAnime(widget.id, _page);

      futureCharacterData.then((value) => setState(() {
            _characters.data!.addAll(value.data!);
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
            const Text(
              'All Characters',
              style: TextStyle(
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
                itemCount: _characters.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      /*CharacterCard(
                        id: _characters.data?[index].id,
                        role: "${_characters.data?[index].attributes?.role}",
                        roleCare: false,
                      ),*/
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
