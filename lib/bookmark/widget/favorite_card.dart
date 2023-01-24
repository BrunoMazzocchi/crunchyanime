import 'package:flutter/material.dart';

import '../../anime/domain/models/anime_data.dart';

class FavoriteCard extends StatefulWidget {
  final AnimeData animeData;
  const FavoriteCard({Key? key, required this.animeData, }) : super(key: key);

  @override
  State<FavoriteCard> createState() => _FavoriteCardState();
}

class _FavoriteCardState extends State<FavoriteCard> {

  @override
  Widget build(BuildContext context) {

   return InkWell(
     onTap: () {
       Navigator.pushNamed(context, '/open_anime_screen',
           arguments: widget.animeData);
     },
     child:  Container(
       margin: const EdgeInsets.only(right: 10),
       width: 150,
       height: 250,
       decoration: const BoxDecoration(
         color:  Color.fromRGBO(33, 31, 43, 1),
         borderRadius: BorderRadius.all(Radius.circular(10)),
       ),
       child: Stack(
         children: [
           Container(
             width: 150,
             height: 210,
             decoration:  BoxDecoration(
               color: Colors.black,
               image: DecorationImage(
                 image: NetworkImage(
                     "${widget.animeData.attributes?.posterImage!.original}"),
                 fit: BoxFit.fitWidth,
               ),
               borderRadius:
               const BorderRadius.all(Radius.circular(10)),
             ),
           ),
           Positioned(
             bottom: 0,
             child: Container(
               width: 150,
               height: 50,
               decoration: const BoxDecoration(
                 color: Color.fromRGBO(33, 31, 43, 1),
                 borderRadius: BorderRadius.only(
                   bottomLeft: Radius.circular(10),
                   bottomRight: Radius.circular(10),
                 ),
               ),
               child: Center(
                 child: Text(
                   "${widget.animeData.attributes?.titles?.en ?? widget.animeData.attributes?.titles!.enJp ?? widget.animeData.attributes?.titles?.jaJp ?? widget.animeData.attributes?.canonicalTitle}",
                   style: const TextStyle(
                     color: Colors.white,
                     fontSize: 15,
                     fontWeight: FontWeight.normal,
                     fontFamily: 'SF Pro Display',
                   ),
                 ),
               ),
             ),
           ),

         ],
       ),
     ),
   );
  }
}
