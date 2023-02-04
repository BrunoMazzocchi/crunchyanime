import 'package:crunchyanime/anime/domain/bloc/review_bloc.dart';
import 'package:crunchyanime/anime/widget/staff_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

import '../domain/models/review_data.dart';

class ReviewWidget extends StatefulWidget {
  final String id;
  const ReviewWidget({Key? key, required this.id}) : super(key: key);

  @override
  State<ReviewWidget> createState() => _ReviewWidgetState();
}

class _ReviewWidgetState extends State<ReviewWidget> {
  late ReviewBloc reviewBloc = Provider.of(context, listen: false);
  late Future<ReviewData>  data;

  @override
  void initState() {
    data = reviewBloc.getReviews(widget.id);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.only(top: 0),
      children: [
        Column(
          children: [

            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text(
                        "Some reviews you might like",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          SnackBar snackBar = const SnackBar(content: Text('On dev'));
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        child: const Text(
                          "See all",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'SF Pro Display',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 400,
                  child: FutureBuilder<ReviewData>(
                    future: data,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        if(snapshot.data?.meta?.count==0) {

                          return const Center(
                            child: Text("No reviews saved at the moment",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'SF Pro Display',
                              ),
                            ),
                          );
                        }

                        return ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: snapshot.data?.data?.length,
                          padding: const EdgeInsets.only(top: 0),
                          itemBuilder: (context, index) {
                            return Container(

                              margin: const EdgeInsets.only(bottom: 10),
                              padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(33, 31, 43, 1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child:  Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('SPOILER: ${snapshot.data?.data?[index].attributes?.spoiler.toString().toUpperCase()}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'SF Pro Display',
                                        ),
                                      ),
                                      Text('Rating: ${snapshot.data?.data?[index].attributes?.rating.toString().toUpperCase()}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'SF Pro Display',
                                        ),
                                      ),
                                      Text('By: ${snapshot.data?.data?[index].attributes?.source.toString().toUpperCase()}',
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: 'SF Pro Display',
                                        ),
                                      ),

                                    ],
                                  ),
                                  const SizedBox(height: 10,),
                                  SizedBox(
                                    height: 150,
                                    child: ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      padding: const EdgeInsets.only(top: 0),
                                      itemCount: 10,
                                      itemBuilder: (context, index) {

                                        return Text('Review: ${snapshot.data?.data?[index].attributes?.content}',
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                            fontFamily: 'SF Pro Display',
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          maxLines: 15,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      }
                      return Shimmer(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.grey[300]!,
                            Colors.grey[100]!,
                            Colors.grey[300]!,
                          ],
                        ),
                        child: ListView.builder(
                         itemCount: 10,
                         itemBuilder: (context, index) {
                           return Container(
                             margin: const EdgeInsets.only(bottom: 10),
                             padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                             width: double.infinity,
                             height: 200,
                             decoration: BoxDecoration(
                               color: const Color.fromRGBO(33, 31, 43, 1),
                               borderRadius: BorderRadius.circular(10),
                             ),
                           );
                         }
                        )
                      );
                    },
                  ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
