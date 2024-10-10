import 'package:caziq_musiq_player/pages/songmenu_page.dart';
import 'package:flutter/material.dart';

// import 'pages/onBoard_page.dart';
import 'pages/profile_page.dart';

void main() {
  // runApp(
  //   MaterialApp(
  //     initialRoute: '/',
  //     routes: {
  //       '/': (context) => const ProfilePage(),
  //       // '/song-menu': (context) => const SongMenuPage(),
  //     },
  //   ),
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Caziq',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProfilePage(),
    );
  }
}
