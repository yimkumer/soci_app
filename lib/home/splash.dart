import 'dart:async';
import 'package:flutter/material.dart';
import 'package:soci_app/home/homepage.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:audioplayers/audioplayers.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _SplashState();
}

class _SplashState extends State<splash> {
  @override
  void initState() {
    startTime();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    AudioPlayer().play(AssetSource("intro.mp3"));
    AudioPlayer().stop();
    AudioPlayer().dispose();

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          // backgroundColor: const Color(0xffF4BB62),
          title: const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              "Societal App",
              style: TextStyle(
                  fontSize: 30, letterSpacing: 4, fontFamily: 'times'),
            ),
          ),
          elevation: 0,
        ),
        body: AnimatedSplashScreen(
          centered: true,
          splash: Image.asset("assets/logo.png"),
          nextScreen: const Home(),
          splashIconSize: double.infinity,
          splashTransition: SplashTransition.fadeTransition,
          animationDuration: const Duration(seconds: 2),
          disableNavigation: true,
        ),
      ),
    );
  }

  startTime() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Home()));
  }
}
