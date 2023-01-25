import 'package:crunchyanime/anime/provider/character/character_data_provider.dart';
import 'package:crunchyanime/anime/widget/character_card.dart';
import 'package:crunchyanime/anime/widget/staff_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'domain/bloc/character_bloc.dart';
import 'domain/bloc/staff_bloc.dart';
import 'domain/models/character_data.dart';
import 'domain/models/staff_data.dart';

class AllStaff extends StatefulWidget {
  final String id;

  const AllStaff({Key? key, required this.id}) : super(key: key);

  @override
  State<AllStaff> createState() => _AllStaffState();
}

class _AllStaffState extends State<AllStaff> {
  late StaffBloc staffBloc = Provider.of(context, listen: false);

  int _page = 0;
  bool _hasNext = false;
  bool _isFirstLoading = false;
  bool _isMoreLoading = false;
  bool more = false;
  late StaffData _staffing;
  late Future<StaffData> futureStaffData;

   _firstLoad() async {
    setState(() {
      _isFirstLoading = true;
    });
    futureStaffData =
        staffBloc.getAllStaff(widget.id, _page);

    futureStaffData.then((value) => setState(() {
          _staffing = value;
          _isFirstLoading = false;
          if (value.links!.next != null) {
            _hasNext = true;
          }
        }));
  }

  void _loadMore() async {
    if (_hasNext == true &&
        _isFirstLoading == false &&
        _isMoreLoading == false &&
        _controller.position.extentAfter < 500) {
      setState(() {
        _isMoreLoading = true;
      });
      _page += 10;
      futureStaffData =
          staffBloc.getAllStaff(widget.id, _page);

      futureStaffData.then((value) => setState(() {
            _staffing.data!.addAll(value.data!);
            if (value.links!.next != null) {
              _hasNext = true;
            }
          }));

      setState(() {
        _isMoreLoading = false;
      });
    }
  }

  late ScrollController _controller;

  @override
  void initState() {
    _firstLoad();
    super.initState();
    _controller = ScrollController()..addListener(_loadMore);
  }

  @override
  void dispose() {
    _controller.removeListener(_loadMore);

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _isFirstLoading == true
        ?  const Center(
            child: CircularProgressIndicator(),
          )
        :  Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
        height: MediaQuery.of(context).size.height,
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
            const Text(
              'All Staff',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'SF Pro Display',
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 150,
              child: GridView.builder(
                controller: _controller,
                padding: const EdgeInsets.only(top: 20),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.5,
                ),
                shrinkWrap: true,
                itemCount: _staffing.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      StaffCard(
                        id: _staffing.data?[index].id,
                        role: "${_staffing.data?[index].attributes?.role}",
                        roleCare: false,
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
