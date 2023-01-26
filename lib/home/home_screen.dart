import 'package:crunchyanime/home/widget/anime_list.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _gif = 0;

  onTabTapped(int index) {
    setState(() {
      _gif = index;
    });
  }

  int indexController(int index) {
    index = index + 1;
    if (index == 3) {
      index = 0;
    }
    return index;
  }

  void autoMoveGif(int index) {
    Future.delayed(
        const Duration(seconds: 3), () {

          if(mounted){
            setState(() {
          _gif = indexController(index);
            });
          }

    });
  }


  final List<String> topBarGif = [
    'assets/gif/demon.gif',
    'assets/gif/dressup.gif',
    'assets/gif/onepiece.gif',
  ];

  final Icon _currentIcon = const Icon(
    Icons.circle_outlined,
    color: Colors.black,
    size: 12,
  );

  final Icon _icon = const Icon(
    Icons.circle,
    color: Colors.white,
    size: 10,
  );

  @override
  Widget build(BuildContext context) {



    autoMoveGif(_gif);

    return Container(
      width: double.infinity,
      height: double.infinity,
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
      child: ListView(
        padding: const EdgeInsets.all(0),
        scrollDirection: Axis.vertical,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 350,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(topBarGif[_gif]),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SizedBox(
                  width: 50,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {
                            onTabTapped(0);
                          },
                          icon: _gif == 0 ? _icon : _currentIcon),
                      IconButton(
                          onPressed: () {
                            onTabTapped(1);
                          },
                          icon: _gif == 1 ? _icon : _currentIcon),
                      IconButton(
                          onPressed: () {
                            onTabTapped(2);
                          },
                          icon: _gif == 2 ? _icon : _currentIcon),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const  AnimeList(title: 'Trending 🔥', type: 'trending',),
          const  AnimeList(title: 'Shounen 👦', type: 'shounen',),
          const  AnimeList(title: 'Super Power 🎆', type: 'super power',),
          const  AnimeList(title: 'Adventure 🏰', type: 'adventure',),
          const  AnimeList(title: 'Fantasy 🐉', type: 'fantasy',),
          const  AnimeList(title: 'Magic 🪄', type: 'magic',),
          const  AnimeList(title: 'Time Travel ⌛', type: 'time travel',),
          const  AnimeList(title: 'Comedy 😶‍🌫️', type: 'comedy',),
          const  AnimeList(title: 'Action 🤺', type: 'action',),
          const  AnimeList(title: 'Romance 💑', type: 'romance',),
          const  AnimeList(title: 'School 🏫', type: 'school',),
          const  AnimeList(title: 'Mystery 🕵️‍♂️', type: 'mystery',),
          const  AnimeList(title: 'Drama 🎭', type: 'drama',),
          const  AnimeList(title: 'Horror 👻', type: 'horror',),
          const  AnimeList(title: 'Psychological 🧠', type: 'psychological',),
          const  AnimeList(title: 'Seinen 🧔', type: 'seinen',),
          const  AnimeList(title: 'Sports ⚽', type: 'sports',),
          const  AnimeList(title: 'Martial Arts 🥋', type: 'martial arts',),
          const  AnimeList(title: 'Shoujo 👧', type: 'shoujo',),

          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
