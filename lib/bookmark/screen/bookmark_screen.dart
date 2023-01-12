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
        color: Colors.black,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(bottom:20),
              width: double.infinity,
              height: 375,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 300,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/gif/onepiece.gif'),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 200,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              width: 100,
                              height: 100,
                              margin: const EdgeInsets.only(bottom: 5),
                              decoration:  BoxDecoration(
                                color: Colors.black,
                                image: const DecorationImage(
                                  image: AssetImage('assets/images/onepiecewano.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(15),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: const [
                                  Text("Completed",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "SF Pro Display",

                                    ),
                                  ),
                                  Text("2",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "SF Pro Display",
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: const [
                                  Text("Bookmarked",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "SF Pro Display",
                                    ),
                                  ),
                                  Text("24",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: "SF Pro Display",
                                    ),)
                                ],
                              )
                            ],

                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const FavoriteList()
          ],
        ),
      ),
    );
  }
}
