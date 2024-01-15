import 'package:flutter/material.dart';
import 'package:projeto_instagram/login.dart';
import 'package:projeto_instagram/reels.dart';
import 'package:projeto_instagram/feed.dart';
import 'package:projeto_instagram/pageperfil.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
    routes: {
      '/':(context) => InstaLogin(),
      '/feed':(context) => FeedPage(),
      '/perfil':(context) => AppScreen(),
      '/reels':(context) => ReelsScreen(),
      
    },

      debugShowCheckedModeBanner: false,
      title: 'Instagram',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black ,


    ),
      //home: const FeedPage(),
      //home: const Perfil(),
      //home: const InstaLogin(),
      //home: const AppScreen(),
      //home: const InstaLogin(),
      //home: const ReelsScreen(),
    
    
    );

  }
}

