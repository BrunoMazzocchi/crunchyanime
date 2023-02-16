import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kitsu_api/kitsu_api.dart';
import 'package:shimmer/shimmer.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60, left: 10, right: 10),
      decoration: const BoxDecoration(
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
        children:  [
          const _SearchBar(),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: double.infinity,
            height: 650,
            child: const _SearchBody(),
          )
        ],
      ),
    );
  }
}

class _SearchBar extends StatefulWidget {
  const _SearchBar({Key? key}) : super(key: key);

  @override
  State<_SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<_SearchBar> {
  final _textController = TextEditingController();
  late KitsuApiBloc _kitsuApiBloc;

  @override
  void initState() {
    _kitsuApiBloc = context.read<KitsuApiBloc>();
    super.initState();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(

      controller: _textController,
      autocorrect: false,
      style: const TextStyle(
        color: Colors.grey,
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),

      ),
      placeholder: 'What would you like to watch?',
      placeholderStyle: const TextStyle(
        color: Colors.grey,
      ),
      prefix: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Icon(
          Icons.search,
          color: Colors.grey,
        ),
      ),

      onChanged: (text) {
        _kitsuApiBloc.add(
          TextChanged(text: text),
        );
      },
      onTap: _onClearTapped,
    );
  }

  void _onClearTapped(){
    _textController.clear();
    _kitsuApiBloc.add(
      const TextChanged(text: ''),
    );
  }

}


class _SearchBody extends StatelessWidget {
  const _SearchBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<KitsuApiBloc, KitsuApiBlocState>(
      builder: (context, state) {
        if(state is SearchStateLoading){
          return  Center(
            child: loading(),
          );
        }
        if(state is SearchStateError) {
          return const Center(
            child: Text('Error'),
          );
        }

        if(state is SearchStateSuccess) {
          return _SearchResults(item: state.data);
        } else {
          return const Center(
            child: Text('Search'),
          );
        }
      }
    );
  }

   loading() {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 20),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
       return Shimmer(
          gradient: const LinearGradient(
            colors: [
              Color.fromRGBO(33, 31, 43, 1),
              Color.fromRGBO(10, 22, 37, 1)
            ],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          child: Container(
            width: double.infinity,
            height: 150,
            color: Colors.white,
          )
      );
    },

    );
  }

}


class _SearchResults extends StatelessWidget {
  final AnimeSearchResult item;
  const _SearchResults({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 20),
      itemCount: item.data!.length,
      itemBuilder: (BuildContext context, int index) {
        return AnimeCard(data: item.data![index]);
      },
    );
  }
}


class AnimeCard extends StatefulWidget {
  final Anime data;

  const AnimeCard({Key? key, required this.data, }) : super(key: key);

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
        margin: const EdgeInsets.only(bottom: 15),
        width: double.infinity,
        height: 150,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(33, 31, 43, 1),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
                image: DecorationImage(
                  image: NetworkImage(widget.data.attributes!.posterImage!.original!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.data.attributes!.canonicalTitle!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      widget.data.attributes!.synopsis!,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

