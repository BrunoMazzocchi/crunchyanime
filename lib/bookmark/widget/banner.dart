import 'package:flutter/material.dart';

import '../../database/database.dart';

class BookmarkBanner extends StatefulWidget {
  const BookmarkBanner({Key? key}) : super(key: key);

  @override
  State<BookmarkBanner> createState() => _BookmarkBannerState();
}

class _BookmarkBannerState extends State<BookmarkBanner> {

  int bookmarkCount = 0;

  void viewBookmarks() async {
    var db = await DB.instance.database;
    var res = await db?.query('favourite');
    setState(() {
      bookmarkCount = res!.length;
    });
  }

  @override
  initState() {
    super.initState();
    viewBookmarks();
  }


  @override
  Widget build(BuildContext context) {
    return  Container(
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
                        children:  [
                          const  Text("Bookmarked anime",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              fontFamily: "SF Pro Display",
                            ),
                          ),
                          Text("$bookmarkCount",
                            style: const TextStyle(
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
    );
  }
}
