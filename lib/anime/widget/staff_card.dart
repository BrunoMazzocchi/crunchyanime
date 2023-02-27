import 'package:crunchyanime/anime/domain/bloc/staff_bloc.dart';
import 'package:crunchyanime/anime/domain/models/staff_information.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';


class StaffCard extends StatefulWidget {
  final String?  id;
  final String role;
  final bool? roleCare;
  const StaffCard(
      {Key? key, required this.id, required this.role, required this.roleCare, })
      : super(key: key);

  @override
  State<StaffCard> createState() => _StaffCardState();
}

class _StaffCardState extends State<StaffCard> {

  late Future<StaffInformation> data;
  late  StaffBloc staffBloc = Provider.of(context, listen: false);
  late String imageUrl;

  bool roleCare = false;
  @override
  void initState() {
    data = staffBloc.getStaffInformation(widget.id!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return FutureBuilder<StaffInformation>(
      future: data,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          if(snapshot.data?.data?.attributes?.image?.original == null) {
            imageUrl = "https://st3.depositphotos.com/6672868/13701/v/600/depositphotos_137014128-stock-illustration-user-profile-icon.jpg";
          } else {
            imageUrl = "${snapshot.data?.data?.attributes?.image?.original}";
          }
          return Container(
            margin: const EdgeInsets.only(right: 10),
            width: 120,
            height: 200,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(33, 31, 43, 1),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 120,
                  height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          imageUrl
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    "${snapshot.data?.data?.attributes?.name}",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5, bottom: 5),
                  child: SizedBox(
                    height: 10,
                    child: Text(
                      widget.role.toUpperCase(),
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 10,
                        fontWeight: FontWeight.normal,
                        fontFamily: 'SF Pro Display',
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        }
        else {
          return  Shimmer(
            gradient: const LinearGradient(
                colors: [Colors.grey, Colors.white, Colors.grey], begin: Alignment.centerLeft, end: Alignment.centerRight),
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              width: 120,
              height: 200,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(33, 31, 43, 1),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 120,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Container(
                      width: 100,
                      height: 10,
                      decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, bottom: 5),
                    child: SizedBox(
                      height: 10,
                      child: Container(
                        width: 50,
                        height: 10,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),);
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
