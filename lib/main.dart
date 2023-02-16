import 'package:crunchyanime/anime/all_characters.dart';
import 'package:crunchyanime/anime/domain/bloc/anime_bloc.dart';
import 'package:crunchyanime/anime/domain/bloc/review_bloc.dart';
import 'package:crunchyanime/anime/domain/bloc/staff_bloc.dart';
import 'package:crunchyanime/home/all_anime.dart';
import 'package:crunchyanime/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kitsu_api/kitsu_api.dart';
import 'package:provider/provider.dart';

import 'anime/all_staff.dart';
import 'anime/domain/bloc/character_bloc.dart';
import 'anime/open_anime_screen.dart';
import 'anime/provider/staff/staff_provider.dart';

void main() {
  final KitsuRepository kitsuRepository = KitsuRepository(
    KitsuClientCache(),
    KitsuClient(),
  );
  runApp(App(
    kitsuRepository: kitsuRepository,
  ));
}

class App extends StatelessWidget {
  const App({
    Key? key,
    required this.kitsuRepository,
  }) : super(key: key);

  final KitsuRepository kitsuRepository;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.edgeToEdge,
    );

    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);


    return MultiProvider(
        providers: [
          Provider<AnimeBloc>(
            create: (_) => AnimeBloc(),

          ),
          Provider<CharacterBloc>(
            create: (_) => CharacterBloc(),

          ),
          Provider<StaffBloc>(
            create: (_) => StaffBloc(),

          ),
          Provider<ReviewBloc>(
            create: (_) => ReviewBloc(),
          ),
          Provider<KitsuApiBloc>(
            create: (_) => KitsuApiBloc(kitsuRepository: kitsuRepository),
          ),
        ],
        child: MaterialApp(
          title: 'CrunchyApp',
          theme: ThemeData(),
          home: const NavigationController(),
          routes: {
            '/open_anime_screen': (context) => OpenAnimeScreen(
              data: ModalRoute.of(context)!.settings.arguments as Anime,
            ),
            '/characters': (context) =>  AllCharacters(
              id: ModalRoute.of(context)!.settings.arguments as String,
            ),
            '/staff': (context) =>  AllStaff(
              id: ModalRoute.of(context)!.settings.arguments as String,
            ),
            '/all_anime': (context) =>  AllAnime(
              type: ModalRoute.of(context)!.settings.arguments as String,
            ),
          },
        ));
  }
}
