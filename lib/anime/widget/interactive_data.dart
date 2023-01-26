import 'package:crunchyanime/anime/widget/overview.dart';
import 'package:crunchyanime/anime/widget/review.dart';
import 'package:crunchyanime/anime/widget/staff.dart';
import 'package:flutter/material.dart';

import '../domain/models/anime_data.dart';


class InteractiveData extends StatefulWidget {
  final AnimeData data;
  const InteractiveData({Key? key, required this.data}) : super(key: key);

  @override
  State<InteractiveData> createState() => _InteractiveDataState();
}

class _InteractiveDataState extends State<InteractiveData> {

  late Widget currentInformation = overview;
  late Widget overview;
  late Widget staff = StaffWidget(id: "${widget.data.id}");
  late Widget reviews = ReviewWidget(id: "${widget.data.id}");
  @override
  void initState() {
    overview = Overview( id: "${widget.data.id}", videoId: '${widget.data.attributes?.youtubeVideoId}',);
    super.initState();
  }

  void changeInformation(Widget widget) {
    setState(() {
      currentInformation = widget;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 150),
            height: MediaQuery.of(context).size.height - 175,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        changeInformation(overview);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 0, top: 10),
                        child: const Text(
                          'Overview',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        changeInformation(staff);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 0, top: 10),
                        child: const Text(
                          'Staff',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        changeInformation(reviews);
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 0, top: 10),
                        child: const Text(
                          'Reviews',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        print('Castings');
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 0, top: 10),
                        child: const Text(
                          'Castings',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 385,
                  margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: currentInformation,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
