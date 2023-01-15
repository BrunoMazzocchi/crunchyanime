import 'package:flutter/material.dart';

class InteractiveData extends StatefulWidget {
  const InteractiveData({Key? key}) : super(key: key);

  @override
  State<InteractiveData> createState() => _InteractiveDataState();
}

class _InteractiveDataState extends State<InteractiveData> {

  late Widget currentInformation = overview();



  Widget overview() {


    return ListView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.only(top: 0),
      children: [
        Column(
          children: [
            SizedBox(
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Text(
                          "Action",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'SF Pro Display',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Text(
                          "Shounen",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'SF Pro Display',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Text(
                          "Adventure",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'SF Pro Display',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Text(
                          "Comedy",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'SF Pro Display',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Characters",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
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
                                    image: DecorationImage(
                                      image: AssetImage("assets/bg/luffy.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Monkey D. Luffy",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'SF Pro Display',
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5, bottom: 5),
                                  child: SizedBox(
                                    height: 10,
                                    child: Text(
                                      "Main",
                                      style: TextStyle(
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
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
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
                                    image: DecorationImage(
                                      image: AssetImage("assets/bg/nami.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Nami",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'SF Pro Display',
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5, bottom: 5),
                                  child: SizedBox(
                                    height: 10,
                                    child: Text(
                                      "Main",
                                      style: TextStyle(
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
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
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
                                    image: DecorationImage(
                                      image: AssetImage("assets/bg/nico.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Nico Robin",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'SF Pro Display',
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5, bottom: 5),
                                  child: SizedBox(
                                    height: 10,
                                    child: Text(
                                      "Main",
                                      style: TextStyle(
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
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
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
                                    image: DecorationImage(
                                      image: AssetImage("assets/bg/zoro.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Zoro",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'SF Pro Display',
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5, bottom: 5),
                                  child: SizedBox(
                                    height: 10,
                                    child: Text(
                                      "Main",
                                      style: TextStyle(
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
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const  Padding(
                  padding:  EdgeInsets.only(top: 15, bottom: 15),
                  child:     Text(
                    "Trailer",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'SF Pro Display',
                    ),
                  ),
                ),
                Padding(
                    padding: const  EdgeInsets.only(bottom: 30),
                    child: Container(
                      width: double.infinity,
                      height: 200,
                    )
                ),
              ],
            )
          ],
        )
      ],
    );
  }
  Widget staff() {

    return ListView(
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.only(top: 0),
      children: [
        Column(
          children: [
            SizedBox(
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Text(
                          "Action",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'SF Pro Display',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Text(
                          "Shounen",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'SF Pro Display',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Text(
                          "Adventure",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'SF Pro Display',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Text(
                          "Comedy",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                            fontFamily: 'SF Pro Display',
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Characters",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'SF Pro Display',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
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
                                    image: DecorationImage(
                                      image: AssetImage("assets/bg/luffy.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Monkey D. Luffy",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'SF Pro Display',
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5, bottom: 5),
                                  child: SizedBox(
                                    height: 10,
                                    child: Text(
                                      "Main",
                                      style: TextStyle(
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
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
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
                                    image: DecorationImage(
                                      image: AssetImage("assets/bg/nami.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Nami",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'SF Pro Display',
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5, bottom: 5),
                                  child: SizedBox(
                                    height: 10,
                                    child: Text(
                                      "Main",
                                      style: TextStyle(
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
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
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
                                    image: DecorationImage(
                                      image: AssetImage("assets/bg/nico.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Nico Robin",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'SF Pro Display',
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5, bottom: 5),
                                  child: SizedBox(
                                    height: 10,
                                    child: Text(
                                      "Main",
                                      style: TextStyle(
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
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
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
                                    image: DecorationImage(
                                      image: AssetImage("assets/bg/zoro.jpg"),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text(
                                    "Zoro",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      fontFamily: 'SF Pro Display',
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 5, bottom: 5),
                                  child: SizedBox(
                                    height: 10,
                                    child: Text(
                                      "Main",
                                      style: TextStyle(
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
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 150, left: 20, right: 20),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        print('Overview');
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 20, top: 20),
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
                        setState(() {

                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 20, top: 20),
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
                        print('Review');
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 20, top: 20),
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
                        margin: const EdgeInsets.only(left: 20, top: 20),
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
