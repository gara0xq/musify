import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:musify/view/screens/artist_screen.dart';
import 'package:musify/view/screens/choose_mode_screen.dart';
import 'package:musify/view/screens/favourite_screen.dart';
import 'package:musify/view/screens/get_started_screen.dart';
import 'package:musify/view/screens/home_screen.dart';
import 'package:musify/view/screens/lyrics_screen.dart';
import 'package:musify/view/screens/music_screen.dart';
import 'package:musify/view/screens/profile_screen.dart';
import 'package:musify/view/screens/recently_screen.dart';
import 'package:musify/view/screens/register_or_signin_screen.dart';
import 'package:musify/view/screens/register_screen.dart';
import 'package:musify/view/screens/signin_screen.dart';
import 'package:musify/view/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        // get started
        GetPage(name: '/', page: () => const SplashScreen()), //splash screen
        GetPage(name: '/get_started', page: () => const GetStartedScreen()), //get_started
        GetPage(name: '/choose_mode', page: () => ChooseModeScreen()), //choose_mode

        // authintication
        GetPage(name: '/resigster_or_signin', page: () => RegisterOrSigninScreen()), //resigster_or_signin
        GetPage(name: '/register', page: () => RegisterScreen()), //register
        GetPage(name: '/signin', page: () => SigninScreen()), //signin

        // main screens
        GetPage(name: '/home', page: () => HomeScreen()), //home
        GetPage(name: '/recently', page: () => RecentlyScreen()), //recently
        GetPage(name: '/favourite', page: () => FavouriteScreen()), //favourite
        GetPage(name: '/profile', page: () => ProfileScreen()), //profile

        //sub screens
        GetPage(name: '/music', page: () => MusicScreen()), //music
        GetPage(name: '/lyrics', page: () => LyricsScreen()), //lyrics
        GetPage(name: '/artist', page: () => ArtistScreen()), //artist
      ],
    );
  }
}
