

import 'package:crunchyanime/bookmark/widget/favorite_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final color1 = [const Color(0xff76c479), const Color(0xff000000)];
  final color2 = [const Color(0xff8438c9), const Color(0xff000000)];
  late var color = color1;
  late var width = 350.0;
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focus = FocusNode();
  late var iconSize = 20.0;
  late var searchSize = 0.0;

   bool notSearching = true;
   bool isTapped = false;
   late Widget body;
  @override
  void initState() {
     body = notSearch();

    _focus.addListener(_onFocusChange);
    super.initState();
  }


  @override
  void dispose() {
    super.dispose();
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
  }

  void _onFocusChange() {
    if (_focus.hasFocus) {
      setState(() {
        color = color2;
        width = 300;
        iconSize = 0;
        searchSize = 20;
        isTapped = true;
        notSearching = false;

        body = onTapped();
      });
    } else if (!_focus.hasFocus) {
      setState(() {
        searchSize = 0;
        iconSize = 20;
        width = 350;
        color = color1;
        notSearching = true;
        isTapped = false;

        body = notSearch();
      });
    }
  }


  Widget onTapped() {
    return AnimatedOpacity(
      opacity: isTapped ? 1.0 : 0.0,
      duration: const Duration(milliseconds: 500),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 1000),
        margin: const EdgeInsets.only(top: 20, bottom: 10),
        width: 400,
        height: 450,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              width: 350,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 0.2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/onepiecewano.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'One Piece',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SF Pro'),
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          'The series focuses on Monkey D. Luffy, a young man made of rubber, who, inspired by his childhood idol, the powerful pirate Red-Haired Shanks, sets off on a journey from the East Blue Sea to find the mythical treasure, the One Piece, and proclaim himself the King of the Pirates. In an effort to organize his own crew, the Straw Hat Pirates,[Jp 1] Luffy rescues and befriends a pirate hunter and swordsman named Roronoa Zoro, and they head off in search of the titular treasure.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'SF Pro',
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 3,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 350,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white, width: 0.2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/onepiecewano.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'One Piece',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'SF Pro'),
                      ),
                      SizedBox(
                        width: 200,
                        child: Text(
                          'The series focuses on Monkey D. Luffy, a young man made of rubber, who, inspired by his childhood idol, the powerful pirate Red-Haired Shanks, sets off on a journey from the East Blue Sea to find the mythical treasure, the One Piece, and proclaim himself the King of the Pirates. In an effort to organize his own crew, the Straw Hat Pirates,[Jp 1] Luffy rescues and befriends a pirate hunter and swordsman named Roronoa Zoro, and they head off in search of the titular treasure.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'SF Pro',
                            overflow: TextOverflow.ellipsis,
                          ),
                          maxLines: 3,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget notSearch() {
    return AnimatedOpacity(
        opacity: notSearching ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 500),
        child: Column(
          children: [
            AnimatedContainer(
              margin: const EdgeInsets.only(top: 20),
              duration: const Duration(milliseconds: 1000),
              width: 450,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'What are you looking for?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'SF Pro',
                      wordSpacing: 2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Find your favorite anime, over more Than 10,000 anime',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'SF Pro',
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            const FavoriteList(),
          ],
        ),
      );
  }


  void onSearching() {
    if(_controller.text.isNotEmpty){
      setState(() {
        notSearching = false;
        isTapped = false;
        body = notSearch();
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: AnimatedContainer(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: RadialGradient(
          colors: color,
          center: Alignment.topRight,
          radius: 1.1,
        )),
        duration: const Duration(milliseconds: 1000),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AnimatedContainer(
                      width: searchSize,
                      duration: const Duration(milliseconds: 1000),
                      child: IconButton(
                        onPressed: () {
                          _focus.unfocus();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      width: width,
                      height: 30,
                      duration: const Duration(milliseconds: 1000),
                      child: CupertinoTextField(
                        keyboardType: TextInputType.text,
                        keyboardAppearance: Brightness.dark,
                        focusNode: _focus,
                        controller: _controller,
                        prefix: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: iconSize,
                            )),
                        placeholder: 'Search',
                        placeholderStyle: const TextStyle(color: Colors.white),
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: 'SF Pro',
                        ),
                        decoration: const BoxDecoration(
                          color: Color(0xff1e1e1e),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1,
                              spreadRadius: 0.1,
                            )
                          ],
                        ),
                        onTap: () {},
                      ),
                    )
                  ],
                ),
                body,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
