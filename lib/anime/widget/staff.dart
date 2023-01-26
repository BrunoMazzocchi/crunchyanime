import 'package:crunchyanime/anime/domain/models/staff_data.dart';
import 'package:crunchyanime/anime/widget/staff_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../domain/bloc/staff_bloc.dart';

class StaffWidget extends StatefulWidget {
  final String id;
  const StaffWidget({Key? key, required this.id}) : super(key: key);

  @override
  State<StaffWidget> createState() => _StaffWidgetState();
}

class _StaffWidgetState extends State<StaffWidget> {
  late StaffBloc staffBloc = Provider.of(context, listen: false);
  late Future<StaffData>  data;

  @override
  void initState() {
    data = staffBloc.getStaff(widget.id);
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
                        "Staff Information",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/staff', arguments: widget.id);
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
                  height: 200,
                  child: FutureBuilder<StaffData>(
                    future: data,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        if(snapshot.data?.meta?.count==0) {

                          return const Center(
                            child: Text("No staff saved at the moment",
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
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data!.data?.length,
                          itemBuilder: (context, index) {
                            return StaffCard(
                              id: "${snapshot.data!.data![index].id}",
                              role: "${snapshot.data!.data![index].attributes!.role}", roleCare: true,
                            );
                          },
                        );
                      }
                      else if (snapshot.hasError) {
                        return  Text("${snapshot.error}");
                      }
                      return const Center(
                        child: CircularProgressIndicator(),
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
