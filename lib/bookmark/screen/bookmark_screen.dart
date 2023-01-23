import 'package:crunchyanime/bookmark/widget/banner.dart';
import 'package:crunchyanime/bookmark/widget/favorite_list.dart';
import 'package:flutter/material.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Column(
          children: const [
           BookmarkBanner(),
             FavoriteList()
          ],
        ),
      ),
    );
  }
}
